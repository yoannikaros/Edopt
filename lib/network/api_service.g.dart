// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ApiService implements ApiService {
  _ApiService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ArticleList> getArticlesList({page = 1, perPage = 10}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'per_page': perPage
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ArticleList>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/articles',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ArticleList.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Article> getArticle(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Article>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/articles/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Article.fromJson(_result.data!);
    return value;
  }


  //PANTI

  @override
  Future<PantiList> getPantiList({page = 1, perPage = 10}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'per_page': perPage
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PantiList>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/orphanages',
                queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PantiList.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Panti> getPanti(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Panti>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/orphanages/${id}',
                queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Panti.fromJson(_result.data!);
    return value;
  }


  //ANAK


  // @override
  // Future<AnakList> getAnakList({page = 1, perPage = 10}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{
  //     r'page': page,
  //     r'per_page': perPage
  //   };
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<AnakList>(
  //           Options(method: 'GET', headers: _headers, extra: _extra)
  //               .compose(_dio.options, '/api/children/',
  //               queryParameters: queryParameters, data: _data)
  //               .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = AnakList.fromJson(_result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<anakModel> GetAnak(id) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   final _result = await _dio.fetch<Map<String, dynamic>>(
  //       _setStreamType<anakModel>(
  //           Options(method: 'GET', headers: _headers, extra: _extra)
  //               .compose(_dio.options, '/api/children/${id}',
  //               queryParameters: queryParameters, data: _data)
  //               .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  //   final value = anakModel.fromJson(_result.data!);
  //   return value;
  // }


  //REQUEST

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
