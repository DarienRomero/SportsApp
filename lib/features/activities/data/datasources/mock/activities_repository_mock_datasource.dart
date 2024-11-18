import 'package:news_app/features/activities/data/models/activity_model.dart';

abstract class ActivitiesRepositoryMockDataSource {
  Future<List<ActivityModel>> getActivities();
}