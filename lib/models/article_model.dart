class ArticleModel {
  String id;
  String adminName;
  String title;
  String previewText;
  String content;
  String imageUrl;
  String createdAt;
  String updateAt;

  ArticleModel({
    required this.id,
    required this.adminName,
    required this.title,
    required this.previewText,
    required this.content,
    required this.imageUrl,
    required this.createdAt,
    required this.updateAt,
  });

  ArticleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    adminName = json['admin_name'];
    title = json['title'];
    previewText= json['preview_text'];
    content = json['content'];
    imageUrl = json['image_url'];
    createdAt = json['created_at'];
    updateAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    return{
      'id': id,
      'admin_name': adminName,
      'title': title,
      'preview_text': previewText,
      'content': content,
      'image_url': imageUrl,
      'created_at': createdAt,
      'updated_at': updateAt,
    };
  }
}