import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';

import 'h_spacing.dart';

/// A customizable button widget with various styling and behavioral options.
/// 
/// This widget provides functionality for:
/// - Customizable size, colors, and shape.
/// - Optional leading widget (e.g., icon or image) before the label.
/// - A loading indicator in place of the label when `loading` is true.
/// - Disabling the button to prevent interactions.
/// 
/// Example usage:
/// ```dart
/// CustomButton(
///   label: 'Submit',
///   onPressed: () {
///     print('Button pressed');
///   },
///   color: Colors.blue,
///   leading: Icon(Icons.send),
///   loading: false,
/// )
/// ```
class CustomButton extends StatelessWidget {
  /// The weight of the font used for the label text.
  final FontWeight fontWeight;

  /// The callback triggered when the button is pressed.
  /// If `disabled` is true, this callback will not be triggered.
  final VoidCallback? onPressed;

  /// The text label displayed on the button.
  final String label;

  /// The width of the button. If null, it adjusts to the content size.
  final double? width;

  /// The background color of the button. Disabled state uses a default gray.
  final Color? color;

  /// The height of the button. Defaults to `60.0`.
  final double heigth;

  /// The border radius of the button. Defaults to `7.0`.
  final double borderRadius;

  /// Whether the button is disabled. Defaults to `false`.
  final bool disabled;

  /// An optional widget displayed before the label (e.g., icon).
  final Widget? leading;

  /// The font size of the label text. Defaults to `14.0`.
  final double fontSize;

  /// Whether to show a loading indicator instead of the label. Defaults to `false`.
  final bool loading;

  /// The color of the label text. Defaults to `Colors.white`.
  final Color labelColor;

  /// The elevation of the button. Defaults to `1.0`.
  final double elevation;

  /// An optional child widget to replace the label entirely.
  final Widget? child;

  /// Defines how the content inside the button is resized.
  /// Defaults to `BoxFit.none`.
  final BoxFit boxFit;

  /// Creates a customizable button widget.
  const CustomButton({
    Key? key,
    this.fontWeight = FontWeight.bold,
    required this.onPressed,
    required this.label,
    this.width,
    required this.color,
    this.heigth = 60,
    this.borderRadius = 7,
    this.disabled = false,
    this.leading,
    this.fontSize = 14,
    this.loading = false,
    this.labelColor = Colors.white,
    this.elevation = 1,
    this.child,
    this.boxFit = BoxFit.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: MaterialButton(
        elevation: elevation,
        color: !disabled ? color : const Color(0xffDADADA),
        minWidth: width,
        height: heigth,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.zero,
        onPressed: () {
          if (disabled) return;
          if (onPressed != null) {
            onPressed!();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leading != null)
              Row(
                children: [
                  leading!,
                  const HSpacing(1),
                ],
              ),
            if (!loading)
              child ?? FittedBox(
                fit: boxFit,
                child: Text(
                  label,
                  style: TextStyle(
                    color: disabled ? const Color(0xff9EA0A7) : labelColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            else
              SizedBox(
                width: mqHeigth(context, 4),
                height: mqHeigth(context, 4),
                child: const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
