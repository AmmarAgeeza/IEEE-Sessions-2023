class AlbumModel {
  final int userId;
  final int id;
  final String title;

  AlbumModel({required this.userId, required this.id, required this.title});

  factory AlbumModel.fromJson(Map jsonData) {
    return AlbumModel(
      userId: jsonData['userId'],
      id: jsonData['id'],
      title: jsonData['title'],
    );
  }
}
