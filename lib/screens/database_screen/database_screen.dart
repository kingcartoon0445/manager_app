import 'dart:convert';

import '../../export_global.dart';

@RoutePage()
class OperationsScreen extends StatelessWidget {
  final DatabaseHelper dbHelper = DatabaseHelper();
void printCategoriesAsJson(List<Category> categories) {
  List<Map<String, dynamic>> jsonList =
      categories.map((category) => category.toMap()).toList();
  
  String jsonString = jsonEncode(jsonList);
  print("Danh sách danh mục dưới dạng JSON:");
  print(jsonString);
}

void printMenuItemsAsJson(List<MenuItem> menuItems) {
  List<Map<String, dynamic>> jsonList =
      menuItems.map((menuItem) => menuItem.toMap()).toList();
  
  String jsonString = jsonEncode(jsonList);
  print("Danh sách món dưới dạng JSON:");
  print(jsonString);
}

void printInvoicesAsJson(List<Invoice> invoices) {
  List<Map<String, dynamic>> jsonList =
      invoices.map((invoice) => invoice.toMap()).toList();
  
  String jsonString = jsonEncode(jsonList);
  print("Danh sách hóa đơn dưới dạng JSON:");
  print(jsonString);
}

void printInvoiceItemsAsJson(List<InvoiceItem> invoiceItems) {
  List<Map<String, dynamic>> jsonList =
      invoiceItems.map((invoiceItem) => invoiceItem.toMap()).toList();
  
  String jsonString = jsonEncode(jsonList);
  print("Danh sách mục hóa đơn dưới dạng JSON:");
  print(jsonString);
}

void printPromotionsAsJson(List<Promotion> promotions) {
  List<Map<String, dynamic>> jsonList =
      promotions.map((promotion) => promotion.toMap()).toList();
  
  String jsonString = jsonEncode(jsonList);
  print("Danh sách khuyến mãi dưới dạng JSON:");
  print(jsonString);
}

  void _insertCategory() async {
    await dbHelper.insertCategory(Category(name: 'Món ăn', imagePath: 'path/to/image'));
    print('Danh mục đã được thêm.');
  }

  void _getAllCategories() async {
    List<Category> categories = await dbHelper.getAllCategories();
    printCategoriesAsJson(categories);
  }

  void _updateCategory() async {
    await dbHelper.updateCategory(Category(id: 1, name: 'Món ăn đã cập nhật', imagePath: 'path/to/image'));
    print('Danh mục đã được cập nhật.');
  }

  void _deleteCategory() async {
    await dbHelper.deleteCategory(1);
    print('Danh mục đã được xóa.');
  }

  void _insertMenuItem() async {
    await dbHelper.insertMenuItem(MenuItem(categoryId: 1, name: 'Pizza', price: 100.0, imagePath: 'path/to/image'));
    print('Món đã được thêm.');
  }

  void _getAllMenuItems() async {
    List<MenuItem> menuItems = await dbHelper.getAllMenuItems();
    printMenuItemsAsJson(menuItems);
  }

  void _updateMenuItem() async {
    await dbHelper.updateMenuItem(MenuItem(id: 1, categoryId: 1, name: 'Pizza đã cập nhật', price: 120.0, imagePath: 'path/to/image'));
    print('Món đã được cập nhật.');
  }

  void _deleteMenuItem() async {
    await dbHelper.deleteMenuItem(1);
    print('Món đã được xóa.');
  }

  void _insertInvoice() async {
    await dbHelper.insertInvoice(Invoice(date: '2024-09-20', totalPrice: 500.0, promotionId: null));
    print('Hóa đơn đã được thêm.');
  }

  void _getAllInvoices() async {
    List<Invoice> invoices = await dbHelper.getAllInvoices();
    printInvoicesAsJson(invoices);
  }

  void _updateInvoice() async {
    await dbHelper.updateInvoice(Invoice(id: 1, date: '2024-09-21', totalPrice: 550.0, promotionId: null));
    print('Hóa đơn đã được cập nhật.');
  }

  void _deleteInvoice() async {
    await dbHelper.deleteInvoice(1);
    print('Hóa đơn đã được xóa.');
  }

  void _insertInvoiceItem() async {
    await dbHelper.insertInvoiceItem(InvoiceItem(invoiceId: 1, menuItemId: 1, quantity: 2));
    print('Mục hóa đơn đã được thêm.');
  }

  void _getAllInvoiceItems() async {
    List<InvoiceItem> invoiceItems = await dbHelper.getAllInvoiceItems();
    printInvoiceItemsAsJson(invoiceItems);
  }

  void _updateInvoiceItem() async {
    await dbHelper.updateInvoiceItem(InvoiceItem(id: 1, invoiceId: 1, menuItemId: 1, quantity: 3));
    print('Mục hóa đơn đã được cập nhật.');
  }

  void _deleteInvoiceItem() async {
    await dbHelper.deleteInvoiceItem(1);
    print('Mục hóa đơn đã được xóa.');
  }

  void _insertPromotion() async {
    await dbHelper.insertPromotion(Promotion(name: 'Giảm giá 10%', discountPercentage: 10.0, startDate: '2024-01-01', endDate: '2024-12-31'));
    print('Khuyến mãi đã được thêm.');
  }

  void _getAllPromotions() async {
    List<Promotion> promotions = await dbHelper.getAllPromotions();
    printPromotionsAsJson(promotions);
  }

  void _updatePromotion() async {
    await dbHelper.updatePromotion(Promotion(id: 1, name: 'Giảm giá 15%', discountPercentage: 15.0, startDate: '2024-01-01', endDate: '2024-12-31'));
    print('Khuyến mãi đã được cập nhật.');
  }

  void _deletePromotion() async {
    await dbHelper.deletePromotion(1);
    print('Khuyến mãi đã được xóa.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quản lý Cơ sở Dữ liệu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Các nút cho Category
            ElevatedButton(onPressed: _insertCategory, child: Text('Thêm Danh Mục')),
            ElevatedButton(onPressed: _getAllCategories, child: Text('Lấy Tất Cả Danh Mục')),
            ElevatedButton(onPressed: _updateCategory, child: Text('Cập Nhật Danh Mục')),
            ElevatedButton(onPressed: _deleteCategory, child: Text('Xóa Danh Mục')),

            // Các nút cho MenuItem
            ElevatedButton(onPressed: _insertMenuItem, child: Text('Thêm Món')),
            ElevatedButton(onPressed: _getAllMenuItems, child: Text('Lấy Tất Cả Món')),
            ElevatedButton(onPressed: _updateMenuItem, child: Text('Cập Nhật Món')),
            ElevatedButton(onPressed: _deleteMenuItem, child: Text('Xóa Món')),

            // Các nút cho Invoice
            ElevatedButton(onPressed: _insertInvoice, child: Text('Thêm Hóa Đơn')),
            ElevatedButton(onPressed: _getAllInvoices, child: Text('Lấy Tất Cả Hóa Đơn')),
            ElevatedButton(onPressed: _updateInvoice, child: Text('Cập Nhật Hóa Đơn')),
            ElevatedButton(onPressed: _deleteInvoice, child: Text('Xóa Hóa Đơn')),

            // Các nút cho InvoiceItem
            ElevatedButton(onPressed: _insertInvoiceItem, child: Text('Thêm Mục Hóa Đơn')),
            ElevatedButton(onPressed: _getAllInvoiceItems, child: Text('Lấy Tất Cả Mục Hóa Đơn')),
            ElevatedButton(onPressed: _updateInvoiceItem, child: Text('Cập Nhật Mục Hóa Đơn')),
            ElevatedButton(onPressed: _deleteInvoiceItem, child: Text('Xóa Mục Hóa Đơn')),

            // Các nút cho Promotion
            ElevatedButton(onPressed: _insertPromotion, child: Text('Thêm Khuyến Mãi')),
            ElevatedButton(onPressed: _getAllPromotions, child: Text('Lấy Tất Cả Khuyến Mãi')),
            ElevatedButton(onPressed: _updatePromotion, child: Text('Cập Nhật Khuyến Mãi')),
            ElevatedButton(onPressed: _deletePromotion, child: Text('Xóa Khuyến Mãi')),
          ],
        ),
      ),
    );
  }
}
