import 'package:equatable/equatable.dart';

class ActivityEntity extends Equatable{
  final int id;
  final String startTime;
  final int duration;
  final String title;
  final String location;
  final int availableSpots;
  final String price;
  final List<String> labels;

  const ActivityEntity({
    required this.id,
    required this.startTime,
    required this.duration,
    required this.title,
    required this.location,
    required this.availableSpots,
    required this.price,
    required this.labels,
  });

  ActivityEntity copyWith({
    int? id,
    String? startTime,
    int? duration,
    String? title,
    String? location,
    int? availableSpots,
    String? price,
    List<String>? labels
  }) => ActivityEntity(
    id: id ?? this.id,
    startTime: startTime ?? this.startTime,
    duration: duration ?? this.duration,
    title: title ?? this.title,
    location: location ?? this.location,
    availableSpots: availableSpots ?? this.availableSpots,
    price: price ?? this.price,
    labels: labels ?? this.labels,
  );
  
  @override
  List<Object?> get props => [
    id,
    startTime,
    duration,
    title,
    location,
    availableSpots,
    price,
    labels
  ];
}