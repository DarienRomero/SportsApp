import 'package:news_app/features/activities/domain/entities/label_entity.dart';

class LabelModel extends LabelEntity {

  const LabelModel({
    required String label,
    required String labelColor,
    required String backgroundColor
  }) : super(
    label: label,
    labelColor: labelColor,
    backgroundColor: backgroundColor
  );

  factory LabelModel.fromMap(Map<String, dynamic> json) => LabelModel(
    label: json["label"] ?? "",
    labelColor: json["label_color"] ?? "",
    backgroundColor: json["background_color"] ?? ""
  );

  factory LabelModel.fromParent(LabelEntity data) => LabelModel(
    label: data.label,
    labelColor: data.labelColor,
    backgroundColor: data.backgroundColor
  );
}