import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';

class ErrorView extends StatelessWidget {
  final double heigth;
  const ErrorView({
    Key? key,
    required this.heigth
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mqHeigth(context, heigth),
      child: const Center(
        child: Text("Ocurrió un error")
      ),
    );
  }
}