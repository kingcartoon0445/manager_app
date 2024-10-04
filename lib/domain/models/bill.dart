class Bill {
  final int? id;
  final double totalPrice;
  final String date;  // Có thể lưu dưới dạng ISO 8601 date string
  final String paymentStatus;

  Bill({
    this.id,
    required this.totalPrice,
    required this.date,
    required this.paymentStatus,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'totalPrice': totalPrice,
      'date': date,
      'paymentStatus': paymentStatus,
    };
  }

  factory Bill.fromMap(Map<String, dynamic> map) {
    return Bill(
      id: map['id'],
      totalPrice: map['totalPrice'],
      date: map['date'],
      paymentStatus: map['paymentStatus'],
    );
  }
}
