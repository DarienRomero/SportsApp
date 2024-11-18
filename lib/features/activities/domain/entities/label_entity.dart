import 'package:equatable/equatable.dart';

class LabelEntity extends Equatable{
  final String label;
  final String labelColor;
  final String backgroundColor;

  const LabelEntity({
    required this.label,
    required this.labelColor,
    required this.backgroundColor,
  });

  LabelEntity copyWith({
    String? label,
    String? labelColor,
    String? backgroundColor,
  }) => LabelEntity(
    label: label ?? this.label,
    labelColor: labelColor ?? this.labelColor,
    backgroundColor: backgroundColor ?? this.backgroundColor,
  );

  @override
  List<Object?> get props => [
    label,
    labelColor,
    backgroundColor,
  ];
}