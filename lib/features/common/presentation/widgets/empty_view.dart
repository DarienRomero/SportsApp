import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';

class EmptyView extends StatelessWidget {
  final double heigth;
  const EmptyView({
    Key? key,
    required this.heigth
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mqHeigth(context, heigth),
      child: const Center(
        child: Text("Sin resultados")
      ),
    );
  }
}