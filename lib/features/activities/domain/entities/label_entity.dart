import 'package:equatable/equatable.dart';

class LabelEntity extends Equatable{
  final String label;
  final String labelColorLight;
  final String backgroundColorLight;
  final String labelColorDark;
  final String backgroundColorDark;

  const LabelEntity({
    required this.label,
    required this.labelColorLight,
    required this.backgroundColorLight,
    required this.labelColorDark,
    required this.backgroundColorDark,
  });

  LabelEntity copyWith({
    String? label,
    String? labelColorLight,
    String? backgroundColorLight,
    String? labelColorDark,
    String? backgroundColorDark,
  }) => LabelEntity(
    label: label ?? this.label,
    labelColorLight: labelColorLight ?? this.labelColorLight,
    backgroundColorLight: backgroundColorLight ?? this.backgroundColorLight,
    labelColorDark: labelColorDark ?? this.labelColorDark,
    backgroundColorDark: backgroundColorDark ?? this.backgroundColorDark,
  );

  @override
  List<Object?> get props => [
    label,
    labelColorLight,
    backgroundColorLight,
    labelColorDark,
    backgroundColorDark,
  ];
}