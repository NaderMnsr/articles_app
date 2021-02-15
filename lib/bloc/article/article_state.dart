part of 'article_bloc.dart';

@immutable
abstract class ArticleState extends Equatable {
  @override
  List<Object> get props => [];
}

class ArticleInitial extends ArticleState {}

class ArticlesLoadInProgress extends ArticleState {}

class ArticlesLoadSuccess extends ArticleState {
  final List<Article> articles;

  ArticlesLoadSuccess({@required this.articles}); // : assert(articles != null);
  @override
  List<Object> get props => [articles];
}

class ArticleLoadFailed extends ArticleState {}
