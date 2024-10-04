import 'dart:math';

import 'package:manager_app/gen/assets.gen.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'database_export.dart';

import 'package:faker/faker.dart';
class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'my_database.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE categories (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            image_path TEXT
          );
        ''');

        await db.execute('''
          CREATE TABLE menu_items (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            category_id INTEGER NOT NULL,
            name TEXT NOT NULL,
            price REAL NOT NULL,
            image_path TEXT,
            FOREIGN KEY (category_id) REFERENCES categories(id)
          );
        ''');

        await db.execute('''
          CREATE TABLE invoices (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            date TEXT NOT NULL,
            total_price REAL NOT NULL,
            promotion_id INTEGER,
            FOREIGN KEY (promotion_id) REFERENCES promotions(id)
          );
        ''');

        await db.execute('''
          CREATE TABLE invoice_items (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            invoice_id INTEGER NOT NULL,
            menu_item_id INTEGER NOT NULL,
            quantity INTEGER NOT NULL,
            FOREIGN KEY (invoice_id) REFERENCES invoices(id),
            FOREIGN KEY (menu_item_id) REFERENCES menu_items(id)
          );
        ''');

        await db.execute('''
          CREATE TABLE promotions (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            discount_percentage REAL NOT NULL,
            start_date TEXT NOT NULL,
            end_date TEXT NOT NULL
          );
        ''');
      },
    );
  }

  // Các hàm CRUD cho Category
  Future<void> insertCategory(Category category) async {
    final db = await database;
    await db.insert(
      'categories',
      category.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Category?> getCategory(int id) async {
    final db = await database;
    final maps = await db.query(
      'categories',
      columns: ['id', 'name', 'image_path'],
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Category.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Category>> getAllCategories() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('categories');

    return List.generate(maps.length, (i) {
      return Category.fromMap(maps[i]);
    });
  }

  Future<void> updateCategory(Category category) async {
    final db = await database;
    await db.update(
      'categories',
      category.toMap(),
      where: 'id = ?',
      whereArgs: [category.id],
    );
  }

  Future<void> deleteCategory(int id) async {
    final db = await database;
    await db.delete(
      'categories',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Các hàm CRUD cho MenuItem
  Future<void> insertMenuItem(MenuItem menuItem) async {
    final db = await database;
    await db.insert(
      'menu_items',
      menuItem.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<MenuItem?> getMenuItem(int id) async {
    final db = await database;
    final maps = await db.query(
      'menu_items',
      columns: ['id', 'category_id', 'name', 'price', 'image_path'],
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return MenuItem.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<List<MenuItem>> getAllMenuItems() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('menu_items');

    return List.generate(maps.length, (i) {
      return MenuItem.fromMap(maps[i]);
    });
  }

  Future<void> updateMenuItem(MenuItem menuItem) async {
    final db = await database;
    await db.update(
      'menu_items',
      menuItem.toMap(),
      where: 'id = ?',
      whereArgs: [menuItem.id],
    );
  }

  Future<void> deleteMenuItem(int id) async {
    final db = await database;
    await db.delete(
      'menu_items',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Các hàm CRUD cho Invoice
  Future<void> insertInvoice(Invoice invoice) async {
    final db = await database;
    await db.insert(
      'invoices',
      invoice.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Invoice?> getInvoice(int id) async {
    final db = await database;
    final maps = await db.query(
      'invoices',
      columns: ['id', 'date', 'total_price', 'promotion_id'],
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Invoice.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Invoice>> getAllInvoices() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('invoices');

    return List.generate(maps.length, (i) {
      return Invoice.fromMap(maps[i]);
    });
  }

  Future<void> updateInvoice(Invoice invoice) async {
    final db = await database;
    await db.update(
      'invoices',
      invoice.toMap(),
      where: 'id = ?',
      whereArgs: [invoice.id],
    );
  }

  Future<void> deleteInvoice(int id) async {
    final db = await database;
    await db.delete(
      'invoices',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Các hàm CRUD cho InvoiceItem
  Future<void> insertInvoiceItem(InvoiceItem invoiceItem) async {
    final db = await database;
    await db.insert(
      'invoice_items',
      invoiceItem.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<InvoiceItem?> getInvoiceItem(int id) async {
    final db = await database;
    final maps = await db.query(
      'invoice_items',
      columns: ['id', 'invoice_id', 'menu_item_id', 'quantity'],
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return InvoiceItem.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<List<InvoiceItem>> getAllInvoiceItems() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('invoice_items');

    return List.generate(maps.length, (i) {
      return InvoiceItem.fromMap(maps[i]);
    });
  }

  Future<void> updateInvoiceItem(InvoiceItem invoiceItem) async {
    final db = await database;
    await db.update(
      'invoice_items',
      invoiceItem.toMap(),
      where: 'id = ?',
      whereArgs: [invoiceItem.id],
    );
  }

  Future<void> deleteInvoiceItem(int id) async {
    final db = await database;
    await db.delete(
      'invoice_items',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Các hàm CRUD cho Promotion
  Future<void> insertPromotion(Promotion promotion) async {
    final db = await database;
    await db.insert(
      'promotions',
      promotion.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Promotion?> getPromotion(int id) async {
    final db = await database;
    final maps = await db.query(
      'promotions',
      columns: ['id', 'name', 'discount_percentage', 'start_date', 'end_date'],
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Promotion.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Promotion>> getAllPromotions() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('promotions');

    return List.generate(maps.length, (i) {
      return Promotion.fromMap(maps[i]);
    });
  }

  Future<void> updatePromotion(Promotion promotion) async {
    final db = await database;
    await db.update(
      'promotions',
      promotion.toMap(),
      where: 'id = ?',
      whereArgs: [promotion.id],
    );
  }

  Future<void> deletePromotion(int id) async {
    final db = await database;
    await db.delete(
      'promotions',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  List<String> listImage1=[Assets.images.fish.path,Assets.images.meet.path];
  
  Future<void> insertSampleData(Database db) async {
      final faker = Faker();
    final random = Random();
    int randomIndex = random.nextInt(listImage1.length);

  String randomImage = listImage1[randomIndex];
  

    // Chèn categories với tên ngẫu nhiên
    for (int i = 0; i < 5; i++) {
      await db.insert('categories', {
        'name': faker.food.restaurant(),
        'image_path': randomImage,
      });
    }

    // Lấy id của các category đã chèn
    final categories = await db.query('categories');
    final categoryIds = categories.map((c) => c['id'] as int).toList();

    // Chèn menu items với tên và giá ngẫu nhiên
    for (int i = 0; i < 10; i++) {
      await db.insert('menu_items', {
        'category_id': categoryIds[random.nextInt(categoryIds.length)],
        'name': faker.food.dish(),
        'price': faker.randomGenerator.decimal(min: 1, ),
        'image_path': Assets.images.demoMeet.path,
      });
    }

    // Chèn promotions với thông tin ngẫu nhiên
    for (int i = 0; i < 3; i++) {
      await db.insert('promotions', {
        'name': faker.company.name(),
        'discount_percentage': faker.randomGenerator.decimal(min: 5, ),
        'start_date': '2024-01-01',
        'end_date': '2024-12-31',
      });
    }

    // Chèn invoices
    for (int i = 0; i < 5; i++) {
      await db.insert('invoices', {
        'date': '2024-09-${i + 1}',
        'total_price': faker.randomGenerator.decimal(min: 10,),
        'promotion_id': null,
      });
    }

    // Lấy id của invoice đã chèn
    final invoices = await db.query('invoices');
    final invoiceIds = invoices.map((i) => i['id'] as int).toList();

    // Lấy id của menu items đã chèn
    final menuItems = await db.query('menu_items');
    final menuItemIds = menuItems.map((item) => item['id'] as int).toList();

    // Chèn invoice items với số lượng ngẫu nhiên
    for (int i = 0; i < 10; i++) {
      await db.insert('invoice_items', {
        'invoice_id': invoiceIds[random.nextInt(invoiceIds.length)],
        'menu_item_id': menuItemIds[random.nextInt(menuItemIds.length)],
        'quantity': random.nextInt(5) + 1,
      });
    }
  }

Future<void> deleteDatabaseFile() async {
  // Lấy đường dẫn đến database
  String databasePath = await getDatabasesPath();
  String path = join(databasePath, 'my_database.db');

  // Xóa database
  await deleteDatabase(path);

  print('Database đã bị xóa.');
}

}
class GlobalData{
    List<Category> categories=[] ;
  List<MenuItem> menuItems=[] ;
  List<Invoice> invoices=[] ;
  List<InvoiceItem> invoiceItems=[] ;
  List<Promotion> promotions =[];
}

final globalData = GlobalData();
Future<void> loadAllData(DatabaseHelper dbHelper) async {
  // Lấy dữ liệu từ các bảng
  globalData.categories = await dbHelper.getAllCategories();
  globalData. menuItems = await dbHelper.getAllMenuItems();
  globalData.invoices = await dbHelper.getAllInvoices();
  globalData. invoiceItems = await dbHelper.getAllInvoiceItems();
  globalData. promotions = await dbHelper.getAllPromotions();

  // In dữ liệu ra console
  print('Categories: ${globalData.categories.map((c) => c.toMap()).toList()}');
  print('Menu Items: ${globalData.menuItems.map((m) => m.toMap()).toList()}');
  print('Invoices: ${globalData.invoices.map((i) => i.toMap()).toList()}');
  print('Invoice Items: ${globalData.invoiceItems.map((ii) => ii.toMap()).toList()}');
  print('Promotions: ${globalData.promotions.map((p) => p.toMap()).toList()}');
}
