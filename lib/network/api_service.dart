import 'package:adopt/logging.dart';
import 'package:adopt/models/article.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

var baseUrl = 'http://edopt-dev.herokuapp.com';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/api/articles')
  Future<ArticleList> getArticlesList(
      {@Query('page') int page = 1, @Query('per_page') int perPage = 10});

  @GET('/api/articles/{id}')
  Future<Article> getArticle(@Path() int id);

  static ApiService create() {
    final dio = Dio();
    dio.interceptors.add(LoggingInterceptor());
    dio.options.headers["Accept"] = "application/json";
    return ApiService(dio, baseUrl: baseUrl);
  }
}
