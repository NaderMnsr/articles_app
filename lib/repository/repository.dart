import 'package:articles_app/api/article_client.dart';
import 'models/article.dart';
import 'package:dio/dio.dart';

class ArticlesRepository {
  ArticleClient _apiRequest;
  Dio dio;

  ArticlesRepository() {
    dio = Dio();
    _apiRequest = ArticleClient(dio);
  }

  Future<List<Article>> getArticles(int period) async {
    return await _apiRequest.getAllSectionsArticlesByPeriod(
        period, "7EWnINRv3uuH52bX0jIptAmMe9GGN6ef");
  }
}
