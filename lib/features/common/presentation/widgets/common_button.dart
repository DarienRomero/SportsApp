import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';

import 'h_spacing.dart';

class CustomButton extends StatelessWidget {
  final FontWeight fontWeight;
  final VoidCallback? onPressed;
  final String label;
  final double width;
  final Color color;
  final double heigth;
  final double borderRadius;
  final bool disabled;
  final Widget? leading;
  final double fontSize;
  final bool loading;
  final Color labelColor;
  final double elevation;

  const CustomButton({
    Key? key, 
    this.fontWeight = FontWeight.bold,
    required this.onPressed,
    required this.label,
    required this.width,
    required this.color,
    this.heigth = 60,
    this.borderRadius = 7,
    this.disabled = false,
    this.leading,
    this.fontSize = 14,
    this.loading = false, 
    this.labelColor = Colors.white,
    this.elevation = 1
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
          borderRadius: BorderRadius.circular(borderRadius)
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
            leading != null ? Row(
              children: [
                leading!,
                const HSpacing(1)
              ],
            ) : Container(),
            !loading ? Text(
              label,
              style: TextStyle(
                color: disabled ? const Color(0xff9EA0A7) : labelColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center
            ) : SizedBox(
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
