class NewsModel {
  final int id;
  final String admin_name;
  final String preview_text;
  final String image_url;
  final DateTime createdAt;
  final DateTime updatedAt;

  NewsModel({
    required this.id,
    required this.admin_name,
    required this.preview_text,
    required this.image_url,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
        id: json['id'],
        admin_name: json['admin_name'],
        preview_text: json['preview_text'],
        image_url: json['image_url'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'admin_name': admin_name,
      'preview_text': preview_text,
      'image_url': image_url,
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString()
    };
  }
}
