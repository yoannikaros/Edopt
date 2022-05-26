// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      json['id'] as int,
      json['title'] as String?,
      json['admin_name'] as String,
      json['preview_text'] as String,
      json['image_url'] as String,
      json['content'] as String?,
      json['created_at'] as String,
      json['updated_at'] as String,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'admin_name': instance.adminName,
      'preview_text': instance.previewText,
      'image_url': instance.imageUrl,
      'content': instance.content,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

ArticleList _$ArticleListFromJson(Map<String, dynamic> json) => ArticleList(
      (json['data'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      ArticleMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleListToJson(ArticleList instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

ArticleMeta _$ArticleMetaFromJson(Map<String, dynamic> json) => ArticleMeta(
      json['current_page'] as int,
      json['last_page'] as int,
    );

Map<String, dynamic> _$ArticleMetaToJson(ArticleMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };
