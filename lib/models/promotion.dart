class Promotion {
  final int? id;
  final String name;
  final double discountPercentage;
  final String startDate;
  final String endDate;

  Promotion({
    this.id,
    required this.name,
    required this.discountPercentage,
    required this.startDate,
    required this.endDate,
  });

  factory Promotion.fromMap(Map<String, dynamic> json) => Promotion(
    id: json['id'],
    name: json['name'],
    discountPercentage: json['discount_percentage'],
    startDate: json['start_date'],
    endDate: json['end_date'],
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'discount_percentage': discountPercentage,
    'start_date': startDate,
    'end_date': endDate,
  };
}

// CREATE TABLE promotions (
//   id INTEGER PRIMARY KEY AUTOINCREMENT,
//   name TEXT NOT NULL,
//   discount_percentage REAL NOT NULL,
//   start_date TEXT NOT NULL,
//   end_date TEXT NOT NULL
// );
