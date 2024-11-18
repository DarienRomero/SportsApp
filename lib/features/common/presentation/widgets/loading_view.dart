import 'package:flutter/material.dart';
import 'package:sports_app/core/utils.dart';

/// A widget that displays a loading indicator with a configurable height.
///
/// This widget is useful for showing a loading state in a specific section of the screen.
/// The height of the loading view is calculated relative to the screen height.
///
/// Example usage:
/// ```dart
/// LoadingView(
///   heigth: 20, // 20% of the screen height.
/// )
/// ```
class LoadingView extends StatelessWidget {
  /// The height of the loading view as a percentage of the screen height.
  final double heigth;

  /// Creates a loading view widget with a customizable height.
  const LoadingView({
    Key? key,
    required this.heigth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mqHeigth(context, heigth),
      child: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).primaryColor, // Uses the theme's primary color.
        ),
      ),
    );
  }
}
