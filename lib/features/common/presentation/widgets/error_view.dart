import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';

/// A widget to display an error message when something goes wrong.
///
/// This widget creates a vertically constrained view with a centered error message.
/// The height is determined relative to the screen size.
///
/// Example usage:
/// ```dart
/// ErrorView(
///   heigth: 30,
/// )
/// ```
class ErrorView extends StatelessWidget {
  /// The height of the error view as a percentage of the screen height.
  final double heigth;

  /// Creates an error view widget with a customizable height.
  const ErrorView({
    Key? key,
    required this.heigth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mqHeigth(context, heigth),
      child: const Center(
        child: Text("Ocurrió un error"), // Displays a static error message.
      ),
    );
  }
}
