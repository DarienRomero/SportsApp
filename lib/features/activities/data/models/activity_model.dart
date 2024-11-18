import 'package:news_app/features/activities/domain/entities/activity_entity.dart';

class ActivityModel extends ActivityEntity{

  const ActivityModel({
    required int id,
    required String startTime,
    required int duration,
    required String title,
    required String location,
    required int availableSpots,
    required String price,
    required List<String> labels
  }) : super(
    id: id,
    startTime: startTime,
    duration: duration,
    title: title,
    location: location,
    availableSpots: availableSpots,
    price: price,
    labels: labels,
  );

  factory ActivityModel.fromMap(Map<String, dynamic> json) => ActivityModel(
    id: json["id"] ?? -1,
    startTime: json["startTime"] ?? "",
    duration: json["duration"] ?? -1,
    title: json["title"] ?? "",
    location: json["location"] ?? "",
    availableSpots: json["availableSpots"] ?? -1,
    price: json["price"] ?? "",
    labels: json["labels"] ?? "",
  );

  @override
  ActivityModel copyWith({
    int? id,
    String? startTime,
    int? duration,
    String? title,
    String? location,
    int? availableSpots,
    String? price,
    List<String>? labels
  }) => ActivityModel(
    id: id ?? this.id,
    startTime: startTime ?? this.startTime,
    duration: duration ?? this.duration,
    title: title ?? this.title,
    location: location ?? this.location,
    availableSpots: availableSpots ?? this.availableSpots,
    price: price ?? this.price,
    labels: labels ?? this.labels,
  );
}