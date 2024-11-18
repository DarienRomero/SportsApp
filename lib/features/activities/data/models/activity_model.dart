import 'package:sports_app/features/activities/data/models/label_model.dart';
import 'package:sports_app/features/activities/domain/entities/activity_entity.dart';

class ActivityModel extends ActivityEntity{

  const ActivityModel({
    required int id,
    required String startTime,
    required int duration,
    required String title,
    required String location,
    required int availableSpots,
    required String price,
    required List<LabelModel> labels,
    required String category
  }) : super(
    id: id,
    startTime: startTime,
    duration: duration,
    title: title,
    location: location,
    availableSpots: availableSpots,
    price: price,
    labels: labels,
    category: category,
  );

  factory ActivityModel.fromMap(Map<String, dynamic> json) => ActivityModel(
    id: json["id"] ?? -1,
    startTime: json["start_time"] ?? "",
    duration: json["duration"] ?? -1,
    title: json["title"] ?? "",
    location: json["location"] ?? "",
    availableSpots: json["available_spots"] ?? -1,
    price: json["price"] ?? "",
    labels: json["labels"] != null ? json["labels"].map((e)=> LabelModel.fromMap(e)).toList() : [],
    category: json["category"] ?? "",
  );
}