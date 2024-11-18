import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

extension EitherX<L, R> on Either<L, R> {
  R asRight() => (this as Right).value; //
  L asLeft() => (this as Left).value;
}

extension HexColorExtension on String {
  Color toColor() {
    try {
      // Asegúrate de que la cadena tenga el formato correcto
      final buffer = StringBuffer();
      if (length == 6 || length == 7) {
        buffer.write('ff'); // Agrega un valor alfa predeterminado si no está presente
      }
      buffer.write(replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (e) {
      // Si ocurre algún error, retorna el color blanco
      return Colors.white;
    }
  }
}