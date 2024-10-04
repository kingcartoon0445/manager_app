class Category {
  final int? id;
  final String name;
  final String? imagePath;

  Category({
    this.id,
    required this.name,
    this.imagePath,
  });

  // Nhận dữ liệu từ Map (khi truy vấn từ SQLite)
  factory Category.fromMap(Map<String, dynamic> json) => Category(
    id: json['id'],
    name: json['name'],
    imagePath: json['image_path'],
  );

  // Chuyển object thành Map để lưu vào SQLite
  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'image_path': imagePath,
  };
}


// CREATE TABLE categories (
//   id INTEGER PRIMARY KEY AUTOINCREMENT,
//   name TEXT NOT NULL,
//   image_path TEXT
// );

