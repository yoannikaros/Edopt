import 'package:json_annotation/json_annotation.dart';
part 'article.g.dart';

@JsonSerializable()
class Article {
  final int id;
  final String? title;
  @JsonKey(name: 'admin_name')
  final String adminName;
  @JsonKey(name: 'preview_text')
  final String previewText;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final String? content;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  Article(
    this.id,
    this.title,
    this.adminName,
    this.previewText,
    this.imageUrl,
    this.content,
    this.createdAt,
    this.updatedAt,
  );

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@JsonSerializable()
class ArticleList {
  final List<Article> data;
  final ArticleMeta meta;

  ArticleList(this.data, this.meta);

  factory ArticleList.fromJson(Map<String, dynamic> json) =>
      _$ArticleListFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleListToJson(this);
}

@JsonSerializable()
class ArticleMeta {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'last_page')
  final int lastPage;

  ArticleMeta(this.currentPage, this.lastPage);

  factory ArticleMeta.fromJson(Map<String, dynamic> json) =>
      _$ArticleMetaFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleMetaToJson(this);
}
