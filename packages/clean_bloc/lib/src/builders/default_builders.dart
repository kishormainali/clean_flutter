import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:flutter/material.dart';

/// {@template default_builders}
/// Default builders
/// {@endtemplate}
abstract class DefaultBuilders {
  /// default loading builder
  static Widget defaultLoadingBuilder(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  /// default error builder
  static Widget defaultErrorBuilder(BuildContext context, BaseError error) {
    return Center(
      child: Text(
        error.toString(),
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
