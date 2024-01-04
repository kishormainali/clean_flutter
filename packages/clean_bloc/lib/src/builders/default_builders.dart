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
  static Widget defaultErrorBuilder<E>(BuildContext context, E error) {
    return Center(
      child: Text(
        error.toString(),
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
