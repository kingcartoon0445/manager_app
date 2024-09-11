import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../config/base_stream_controller.dart';
import '../config/local_storage.dart';
import '../main.dart';

const vietnamCode = 'vi';
const englishCode = 'en';
const chineseCode = 'zh';
const vietnam = Locale('vi', "VN");
const english = Locale('en', "US");
const chinese = Locale('zh', "CN");

const List<Locale> supportedLocales = <Locale>[english, vietnam, chinese];

extension LocaleExtension on Locale {
  String get text {
    switch (languageCode) {
      case vietnamCode:
        return 'vietnam'.tr();
      case chineseCode:
        return 'chinese'.tr();
      default:
        return 'english'.tr();
    }
  }
}

@singleton
class LanguageService {
  final LocalStorage localStorage;

  LanguageService({required this.localStorage}) {
    final code = localStorage.languageCode;
    _languageStream = BaseStreamController(_getLocaleByCode(code));
  }

  BaseStreamController<Locale> get language => _languageStream;
  late final BaseStreamController<Locale> _languageStream;

  void onSaveLanguage(String code) {
    localStorage.cacheLanguageCode(code);
    _languageStream.value = _getLocaleByCode(code);
    navigatorKey?.currentContext!.setLocale(_getLocaleByCode(code));
  }

  Locale _getLocaleByCode(String code) {
    if (code == vietnamCode) {
      return vietnam;
    }

    return english;
  }
}
