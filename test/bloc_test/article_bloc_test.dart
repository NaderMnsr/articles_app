import 'package:articles_app/bloc/article/article_bloc.dart';
import 'package:articles_app/repository/models/article.dart';
import 'package:articles_app/repository/repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  var mockArticleRepository = MockArticleRepository();

  group('GetArticles', () {
    final articles = [
      Article(id: 1, title: 'Article title - Fake title for testing')
    ];

    blocTest(
      'Emits ArticlesLoadInProgress and ArticlesLoadSuccess when successful',
      build: () {
        when(mockArticleRepository.getArticles(7))
            .thenAnswer((_) async => articles);
        return ArticleBloc(articlesRepository: mockArticleRepository);
      },
      act: (bloc) => bloc.add(ArticlesRequested(period: 7)),
      expect: [
        ArticlesLoadInProgress(),
        ArticlesLoadSuccess(articles: articles)
      ],
    );

    blocTest(
      'Get articles period:11, Emits ArticlesLoadInProgress and ArticlesLoadFailed when successfull',
      build: () {
        when(mockArticleRepository.getArticles(11))
            .thenAnswer((answer) async => null);
        return ArticleBloc(articlesRepository: mockArticleRepository);
      },
      act: (bloc) => bloc.add(ArticlesRequested(period: 11)),
      expect: [ArticlesLoadInProgress(), ArticleLoadFailed()],
    );
  });
}

class MockArticleRepository extends Mock implements ArticlesRepository {}
