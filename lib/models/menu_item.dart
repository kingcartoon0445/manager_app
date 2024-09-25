class MenuItem {
  final int? id;
  final int categoryId;
  final String name;
  final double price;
  final String? imagePath;

  MenuItem({
    this.id,
    required this.categoryId,
    required this.name,
    required this.price,
    this.imagePath,
  });

  factory MenuItem.fromMap(Map<String, dynamic> json) => MenuItem(
    id: json['id'],
    categoryId: json['category_id'],
    name: json['name'],
    price: json['price'],
    imagePath: json['image_path'],
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'category_id': categoryId,
    'name': name,
    'price': price,
    'image_path': imagePath,
  };
}


// CREATE TABLE menu_items (
//   id INTEGER PRIMARY KEY AUTOINCREMENT,
//   category_id INTEGER NOT NULL,
//   name TEXT NOT NULL,
//   price REAL NOT NULL,
//   image_path TEXT,
//   FOREIGN KEY (category_id) REFERENCES categories(id)
// );
