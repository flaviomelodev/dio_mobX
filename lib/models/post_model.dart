class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel(this.userId, this.id, this.title, this.body);

  static PostModel fromJson(Map map) {
    return PostModel(
      map['userId'],
      map['id'],
      map['title'],
      map['body'],
    );
  }
}
