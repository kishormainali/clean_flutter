import 'dart:async';

import 'package:build/build.dart';
import 'package:clean_gql_generator/src/utils/writer.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql_code_builder/ast.dart';
import 'package:gql_code_builder/source.dart';
import 'package:path/path.dart' as p;

import 'allocators/gql_allocator.dart';
import 'codegen/schema.dart';
import 'utils/config.dart';
import 'utils/locations.dart';
import 'utils/reader.dart';

Builder graphqlBuilder(
  BuilderOptions options,
) =>
    GraphqlBuilder(options.config);

class GraphqlBuilder implements Builder {
  BuilderConfig config;

  GraphqlBuilder(Map<String, dynamic> config) : config = BuilderConfig(config);

  final localFileExtensions = <String>[astExtension, dataExtension, varExtension, reqExtension, schemaExtension];

  @override
  Map<String, List<String>> get buildExtensions => {
        '{{dir}}/{{file}}${config.sourceExtension}': [...localFileExtensions.map((extension) => '{{dir}}/${config.outputDir}/{{file}}$extension')],
      };

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    SourceNode? schema;
    AssetId? schemaId;
    final doc = await readDocument(buildStep, config.sourceExtension);
    final docPackage = buildStep.inputId.package;
    final docDirPath = p.dirname(buildStep.inputId.path);
    if (config.schemaIds != null) {
      for (final id in config.schemaIds!) {
        if (docPackage == id.package && docDirPath.contains(p.dirname(id.path))) {
          schema = await readDocument(buildStep, config.sourceExtension, id);
          schemaId = id;
          break;
        }
      }
    }

    if (schema == null && config.schemaId != null) {
      schema = await readDocument(buildStep, config.sourceExtension, config.schemaId);
      schemaId = config.schemaId!;
    }

    if (schema == null) {
      throw StateError('No schema found for ${buildStep.inputId}');
    }

    if ((config.whenExtensionConfig.generateMaybeWhenExtensionMethod || config.whenExtensionConfig.generateWhenExtensionMethod) && !config.shouldAddTypenames) {
      throw StateError('When extensions require add_type_names to be true. Consider setting add_typenames to true in your build.yaml or disabling when_extensions in your build.yaml.');
    }

    final triStateValueConfig = config.triStateOptionalsConfig;

    final schemaOutputAsset = outputAssetId(schemaId!, schemaExtension, config.outputDir);

    final schemaUrl = schemaOutputAsset.uri.toString();
    final schemaAllocator = GqlAllocator(
      buildStep.inputId.uri.toString(),
      config.sourceExtension,
      outputAssetId(buildStep.inputId, schemaExtension, config.outputDir).uri.toString(),
      schemaUrl,
      config.outputDir,
    );

    final varAllocator = schemaAllocator;

    final dataToVarsMode = config.dataToJsonMode;

    final libs = <String, Library>{
      astExtension: buildAstLibrary(doc),
      // dataExtension: buildDataLibrary(
      //   config.shouldAddTypenames ? addTypeNames(doc) : doc,
      //   addTypeNames(schema),
      //   p.basename(generatedFilePath(buildStep.inputId, dataExtension)),
      //   config.typeOverrides,
      //   config.whenExtensionConfig,
      //   config.dataClassConfig,
      // ),
      // varExtension: buildFreezedVarLibrary(
      //   doc,
      //   addTypeNames(schema),
      //   p.basename(generatedFilePath(buildStep.inputId, varExtension)),
      //   p.basename(generatedFreezedFilePath(buildStep.inputId, varExtension)),
      //   config.typeOverrides,
      //   varAllocator,
      //   triStateValueConfig,
      // ),
      // varExtension: buildVarLibrary(doc, addTypeNames(schema), p.basename(generatedFilePath(buildStep.inputId, varExtension)), config.typeOverrides, varAllocator, triStateValueConfig),
      // reqExtension: buildReqLibrary(
      //   doc,
      //   p.basename(generatedFilePath(buildStep.inputId, reqExtension)),
      //   dataToVarsMode,
      // ),
      schemaExtension: buildSchemaCLibrary(
        doc,
        config.typeOverrides,
        config.enumFallbackConfig,
        schemaAllocator,
        triStateValueConfig,
        [
          p.basename(generatedFilePath(buildStep.inputId, schemaExtension)),
          p.basename(generatedFreezedFilePath(buildStep.inputId, schemaExtension)),
        ],
      ),
    };

    for (var entry in libs.entries) {
      final generatedAsset = outputAssetId(buildStep.inputId, entry.key, config.outputDir);
      final schemaOutputAsset = outputAssetId(schemaId, schemaExtension, config.outputDir);

      final allocator = GqlAllocator(
        buildStep.inputId.uri.toString(),
        config.sourceExtension,
        generatedAsset.uri.toString(),
        schemaOutputAsset.uri.toString(),
        config.outputDir,
      );

      await writeDocument(generatedAsset, entry.value, allocator, buildStep);
    }
  }
}
