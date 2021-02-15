part of 'article_bloc.dart';

@immutable
abstract class ArticleEvent extends Equatable {
  const ArticleEvent();
}

class Articles7DaysRequested extends ArticleEvent {
  @override
  List<Object> get props => [];
}

class Articles30DaysRequested extends ArticleEvent {
  @override
  List<Object> get props => [];
}

class ArticlesRequested extends ArticleEvent {
  final int period;
  const ArticlesRequested({@required this.period});
  @override
  List<Object> get props => [period];
}
