import 'package:articles_app/repository/models/article.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'article_client.g.dart';

@RestApi(
    baseUrl:
        "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections")
abstract class ArticleClient {
  factory ArticleClient(Dio dio, {String baseUrl}) = _ArticleClient;

  Future<List<Article>> getAllSectionsArticlesByPeriod(
      @Path("period") int period, @Query("api-key") String apiKey);
}
