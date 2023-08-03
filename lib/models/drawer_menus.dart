class MenuItem {
  final int id;
  final String title;

  MenuItem({required this.id, required this.title});

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      id: json['id'],
      title: json['title'],
    );
  }
}
