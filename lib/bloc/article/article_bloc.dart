import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:articles_app/repository/models/article.dart';
import 'package:articles_app/repository/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'article_event.dart';
part 'article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final ArticlesRepository articlesRepository;
  ArticleBloc({@required this.articlesRepository})
      : assert(articlesRepository != null),
        super(ArticleInitial());

  @override
  Stream<ArticleState> mapEventToState(
    ArticleEvent event,
  ) async* {
    List<Article> articles = List<Article>();
    if (event is ArticleInitial) {
      yield ArticlesLoadInProgress();
      articles = await articlesRepository.getArticles(7);
      yield ArticlesLoadSuccess(articles: articles);
    } else if (event is ArticlesRequested) {
      yield ArticlesLoadInProgress();
      try {
        List<Article> articles =
            await articlesRepository.getArticles(event.period);
        yield (articles == null)
            ? ArticleLoadFailed()
            : ArticlesLoadSuccess(articles: articles);
      } catch (e) {
        yield ArticleLoadFailed();
      }
    }
  }
}
