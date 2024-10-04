import 'package:injectable/injectable.dart';

import '../domain/collection/categories_collection.dart';

abstract class ICategoriesRespository {
  @factoryMethod
  Future<List<CategoriesCollection>> getAllItemCart();
  @factoryMethod
  Future<void> createItemCart(CategoriesCollection data);
  @factoryMethod
  Future<void> deleteItemCart(int index);
  @factoryMethod
  Future<void> deleteAllCart();
}
