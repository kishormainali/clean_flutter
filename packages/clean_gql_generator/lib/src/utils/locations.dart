import 'package:build/build.dart';
import 'package:path/path.dart' as p;

String outputPath(
  String inputPath,
  String outputDir,
) {
  final pathSegments = p.url.split(inputPath);
  pathSegments.insert(pathSegments.length - 1, outputDir);
  return p.posix.joinAll(pathSegments);
}

AssetId outputAssetId(
  AssetId inputAssetId,
  String extension,
  String outputDir,
) =>
    AssetId(
      inputAssetId.package,
      outputPath(inputAssetId.path, outputDir),
    ).changeExtension(extension);

/// The path to the generated '.g.dart' file for a given input
String generatedFilePath(
  AssetId inputId,
  String extension,
) =>
    inputId.changeExtension(_generatedFileExtension(extension)).uri.path;

String generatedFreezedFilePath(
  AssetId inputId,
  String extension,
) =>
    inputId.changeExtension(_generatedFreezedFileExtension(extension)).uri.path;

String _generatedFileExtension(String sourceExtension) {
  final parts = sourceExtension.split('.');
  final dartExtension = parts.removeLast();
  assert(dartExtension == 'dart', 'Unrecognized file type');
  parts.add('g.dart');
  return parts.join('.');
}

String _generatedFreezedFileExtension(String sourceExtension) {
  final parts = sourceExtension.split('.');
  final dartExtension = parts.removeLast();
  assert(dartExtension == 'dart', 'Unrecognized file type');
  parts.add('freezed.dart');
  return parts.join('.');
}
