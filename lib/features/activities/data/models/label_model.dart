import 'package:news_app/features/activities/domain/entities/label_entity.dart';

class LabelModel extends LabelEntity {

  const LabelModel({
    required String label,
    required String labelColorLight,
    required String backgroundColorLight,
    required String labelColorDark,
    required String backgroundColorDark
  }) : super(
    label: label,
    labelColorLight: labelColorLight,
    backgroundColorLight: backgroundColorLight,
    labelColorDark: labelColorDark,
    backgroundColorDark: backgroundColorDark,
  );

  factory LabelModel.fromMap(Map<String, dynamic> json) => LabelModel(
    label: json["label"] ?? "",
    labelColorLight: json["label_color_light"] ?? "",
    backgroundColorLight: json["background_color_light"] ?? "",
    labelColorDark: json["label_color_dark"] ?? "",
    backgroundColorDark: json["background_color_dark"] ?? ""
  );

  factory LabelModel.fromParent(LabelEntity data) => LabelModel(
    label: data.label,
    labelColorLight: data.labelColorLight,
    backgroundColorLight: data.backgroundColorLight,
    labelColorDark: data.labelColorDark,
    backgroundColorDark: data.backgroundColorDark,
  );
}