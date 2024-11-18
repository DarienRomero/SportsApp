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
    required List<String> labels,
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
    labels: json["labels"] ?? "",
    category: json["category"] ?? "",
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
    List<String>? labels,
    String? category
  }) => ActivityModel(
    id: id ?? this.id,
    startTime: startTime ?? this.startTime,
    duration: duration ?? this.duration,
    title: title ?? this.title,
    location: location ?? this.location,
    availableSpots: availableSpots ?? this.availableSpots,
    price: price ?? this.price,
    labels: labels ?? this.labels,
    category: category ?? this.category,
  );
}