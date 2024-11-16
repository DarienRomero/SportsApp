part of 'news_bloc.dart';
@immutable
abstract class NewsEvent {
  
}
class StartGetNews extends NewsEvent {
  StartGetNews();
}