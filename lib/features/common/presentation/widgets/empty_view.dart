import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';

/// A simple widget to display a placeholder view when no results or content are available.
///
/// This widget creates a vertically constrained empty view with a centered message.
/// The height is determined relative to the screen size.
///
/// Example usage:
/// ```dart
/// EmptyView(
///   heigth: 30,
/// )
/// ```
class EmptyView extends StatelessWidget {
  /// The height of the empty view as a percentage of the screen height.
  final double heigth;

  /// Creates an empty view widget with a customizable height.
  const EmptyView({
    Key? key,
    required this.heigth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mqHeigth(context, heigth),
      child: const Center(
        child: Text("Sin resultados"), // Displays a static placeholder message.
      ),
    );
  }
}
