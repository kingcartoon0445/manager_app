class InvoiceItem {
  final int? id;
  final int invoiceId;
  final int menuItemId;
  final int quantity;

  InvoiceItem({
    this.id,
    required this.invoiceId,
    required this.menuItemId,
    required this.quantity,
  });

  factory InvoiceItem.fromMap(Map<String, dynamic> json) => InvoiceItem(
    id: json['id'],
    invoiceId: json['invoice_id'],
    menuItemId: json['menu_item_id'],
    quantity: json['quantity'],
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'invoice_id': invoiceId,
    'menu_item_id': menuItemId,
    'quantity': quantity,
  };
}


// CREATE TABLE invoice_items (
//   id INTEGER PRIMARY KEY AUTOINCREMENT,
//   invoice_id INTEGER NOT NULL,
//   menu_item_id INTEGER NOT NULL,
//   quantity INTEGER NOT NULL,
//   FOREIGN KEY (invoice_id) REFERENCES invoices(id),
//   FOREIGN KEY (menu_item_id) REFERENCES menu_items(id)
// );