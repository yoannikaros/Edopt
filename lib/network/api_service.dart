import 'package:adopt/logging.dart';
import 'package:adopt/models/article.dart';
import 'package:adopt/models/panti/panti_model.dart';
import 'package:adopt/models/child/child_model.dart';
import 'package:adopt/models/appointment/appointment.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

var baseUrl = 'http://edopt-dev.herokuapp.com';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  //Article
  @GET('/api/articles')
  Future<ArticleList> getArticlesList({
    @Query('page') int page = 1,
    @Query('per_page') int perPage = 10,
  });

  @GET('/api/articles/{id}')
  Future<Article> getArticle(@Path() int id);

  //Panti Asuhan
  @GET('/api/orphanages/')
  Future<PantiList> getPantiList(
    @Query('page') int page,
    @Query('query') String query,
    @Query('lat') String lat,
    @Query('lng') String lng,
  );

  @GET('/api/orphanages/{id}')
  Future<Panti> getPanti(@Path() int id);

  //Child
  // @GET('/api/children/')
  // Future<ChildList> getChildList(
  //     {@Query('page') int page = 1, @Query('per_page') int perPage = 10});

  // @GET('/api/children/{id}')
  // Future<Child> getChild(@Path() int id);

  //Appointment
  @GET('/api/appointments')
  Future<AppointmentList> getAppointmentList(
      {@Query('page') int page = 1, @Query('per_page') int perPage = 10});

  @GET('/api/appointments/{id}')
  Future<Appointment> getAppointment(@Path() int id);

  @POST('/api/appointments')
  static ApiService create() {
    final dio = Dio();
    dio.interceptors.add(LoggingInterceptor());
    dio.options.headers["Accept"] = "application/json";
    return ApiService(dio, baseUrl: baseUrl);
  }
}
