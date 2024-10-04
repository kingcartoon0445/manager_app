
class Invoice {
  final int? id;
  final String date;
  final double totalPrice;
  final int? promotionId;

  Invoice({
    this.id,
    required this.date,
    required this.totalPrice,
    this.promotionId,
  });

  factory Invoice.fromMap(Map<String, dynamic> json) => Invoice(
    id: json['id'],
    date: json['date'],
    totalPrice: json['total_price'],
    promotionId: json['promotion_id'],
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'date': date,
    'total_price': totalPrice,
    'promotion_id': promotionId,
  };
}

// CREATE TABLE invoices (
//   id INTEGER PRIMARY KEY AUTOINCREMENT,
//   date TEXT NOT NULL,
//   total_price REAL NOT NULL,
//   promotion_id INTEGER,
//   FOREIGN KEY (promotion_id) REFERENCES promotions(id)
// );
