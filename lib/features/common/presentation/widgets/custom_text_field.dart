import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final String errorMessage;
  final TextEditingController? controller;
  final Function()? onTap;
  final TextInputFormatter? formater;
  final GlobalKey<FormState>? formKey;
  final FocusNode? focusNode;
  final TextAlign textAlign;
  final double widthPer;
  final String label;
  final bool autofocus;
  final TextStyle? style;
  final int? maxLength;
  final Function()? onEditingComplete;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double borderRadius;
  final double contentPadding;
  final bool? enabled;
  final Color? fillColor;
  final double? height;
  final bool autocorrect;
  final bool enableSuggestions;
  final double leftPaddingPer;

  const CustomTextField({
    required this.hintText, 
    this.obscureText = false,
    this.onChanged,
    this.validator,
    this.keyboardType,
    Key? key, 
    this.hintStyle,
    this.errorMessage = "",
    this.controller,
    this.onTap,
    this.formater,
    this.formKey,
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.widthPer = 90,
    this.autofocus = false,
    required this.label,
    this.maxLength,
    this.onEditingComplete,
    this.style,
    this.suffixIcon,
    this.prefixIcon,
    this.borderRadius = 8,
    this.contentPadding = 15,
    this.enabled,
    this.fillColor,
    this.height = 55,
    this.autocorrect = false,
    this.enableSuggestions = false,
    this.leftPaddingPer = 5
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hasError = errorMessage.isNotEmpty;
    return SizedBox(
      width: mqWidth(context, widthPer),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: mqWidth(context, widthPer),
            height: height,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.12),
                  offset: Offset(2, 2),
                  blurRadius: 5
                )
              ]
            ),
            child: TextFormField(
              autocorrect: autocorrect,
              enabled: enabled,
              autofocus: autofocus,
              key: formKey,
              onTap: onTap,
              enableSuggestions: enableSuggestions,
              focusNode: focusNode,
              controller: controller,
              enableInteractiveSelection: false,
              clipBehavior: Clip.none,
              obscureText: obscureText,
              onChanged: onChanged,
              validator: validator,
              obscuringCharacter: "*",
              keyboardType: keyboardType,
              maxLength: maxLength,
              inputFormatters: formater != null ? [formater!] : null,
              style: style ?? TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: obscureText ? FontWeight.w700 : FontWeight.w500,
              ),
              textAlign: textAlign,
              onEditingComplete: onEditingComplete,
              decoration: InputDecoration(
                hintText: hintText,
                counterText: "",
                contentPadding: EdgeInsets.symmetric(
                  horizontal: mqWidth(context, leftPaddingPer),
                  vertical: contentPadding
                ),
                hintStyle: hintStyle ?? const TextStyle(
                  fontSize: 16,
                  color: Color(0xffA1A3B0),
                  letterSpacing: null,
                  fontWeight: FontWeight.w400
                ),
                fillColor: fillColor,
                filled: fillColor != null,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(borderRadius)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(borderRadius)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(borderRadius)
                ),
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon
              ),
            ),
          ),
          if(hasError) Container(
            width: mqWidth(context, widthPer),
            height: 1,
            color: hasError ? Theme.of(context).dividerColor :Colors.white,
          ),
          errorMessage.isNotEmpty ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VSpacing(1),
              Container(
                padding: EdgeInsets.only(
                  left: mqWidth(context, 2)
                ),
                child: Text(errorMessage, 
                  style: const TextStyle(
                    color: Colors.red
                  )
                ),
              ),
              const VSpacing(1)
            ],
          ) : const SizedBox()
        ],
      ),
    );
  }
}