import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:manager_app/data/categories_respository.dart';

import '../../core/isar/isar_service.dart';
import '../collection/categories_collection.dart';

@singleton
class CategoriesImpl implements ICategoriesRespository {
  final categoriesService = IsarService<CategoriesCollection>(
      (isar) => isar.categoriesCollections, CategoriesCollectionSchema);
  @override
  Future<void> createItemCart(CategoriesCollection data) async {
    try {
      final isarData = await categoriesService.updateData(data);
      return isarData;
    } on PlatformException catch (e) {
      EasyLoading.showError(e.toString());
    }
  }

  @override
  Future<void> deleteAllCart() {
    // TODO: implement deleteAllCart
    throw UnimplementedError();
  }

  @override
  Future<void> deleteItemCart(int index) {
    // TODO: implement deleteItemCart
    throw UnimplementedError();
  }

  @override
  Future<List<CategoriesCollection>> getAllItemCart() async {
    try {
      final isarData = await categoriesService.getAllData();
      return isarData;
    } catch (e) {
      if (kDebugMode) {
        EasyLoading.showError(e.toString());
        return [];
      }
    }
    return [];
  }
}
