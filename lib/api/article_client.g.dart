// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ArticleClient implements ArticleClient {
  _ArticleClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??=
        'http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<Article>> getAllSectionsArticlesByPeriod(period, apiKey) async {
    ArgumentError.checkNotNull(apiKey, 'apiKey');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api-key': apiKey};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/$period.json',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data["results"].map(
      (dynamic i) {
        return Article.fromJson(i as Map<String, dynamic>);
      },
    ).toList();
    return List<Article>.from(value);
  }
}
