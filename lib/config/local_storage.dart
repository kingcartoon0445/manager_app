import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/language_service.dart';

const String keyLanguageCode = '_languageCode';
const String keyFirstUserApp = '_firstUseApp';
// const String keyAccessToken = "_accessToken";
// const String keyRefreshToken = "_refreshToken";
// const String keyUserId = '_userId';
// const String keyUserRole = '_userId';
// const String keyPermissions = '_permission';
// const String keyVerificationId = '_verificationId';
// const String keyResendToken = '_resendToken';
// const String keyUID = '_uid';
// const String keyRefCode = '_refCode';
// const String keyPassword = '_password';

const String keyFCMToken = '_fcmToken';
const String keyPhoneNumber = '_phoneNumber';
const String keyKeyWord = '_keyWord';
const String keyBound = '_keyBound';

abstract class LocalStorage {
  // Future<void> cacheAccessToken(String token);
  // Future<void> cacheRefreshToken(String refreshToken);
  // Future<void> cacheUserID(String userId);
  // Future<void> cacheUserRole(String userRole);

  Future<void> cacheLanguageCode(String language);
  // Future<void> cacheGroupPermission(List<String> permission);
  // Future<void> cacheVerificationId(String verificationId);
  // Future<void> cacheResendToken(int? resendToken);
  // Future<void> cacheUID(String uid);
  // Future<void> cacheRefCode(String refCode);
  // Future<void> cachePassword(String password);

  // Future<String?> accessToken();
  // Future<String?> refreshToken();
  // Future<String?> userId();
  // Future<String> getPassword();

  Future<void> setFCMToken(String fcmToken);

  Future<void> setPhoneNumber(String phoneNumber);

  Future<void> setKeyWord(String keyWord);

  Future<void> setIsBound(bool isBound);

  // List<String> get permission;

  String get languageCode;
  // String get userRole;
  // String get verificationId;
  // int? get resendToken;
  // String get refCode;
  // String get uid;

  bool get isBound;

  String get fcmToken;

  String get phoneNumber;

  String get keyword;

  Future<void> clear();
}

@Singleton(
  as: LocalStorage,
)
class LocalStorageImpl extends LocalStorage {
  late final FlutterSecureStorage _flutterSecureStorage;
  late final SharedPreferences sharedPreferences;

  LocalStorageImpl();

  @PostConstruct(preResolve: true)
  Future<void> onInitService() async {
    _flutterSecureStorage = const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
        iOptions:
            IOSOptions(accessibility: KeychainAccessibility.first_unlock));

    sharedPreferences = await SharedPreferences.getInstance();
    final isFirstUes = sharedPreferences.getBool(keyFirstUserApp) ?? false;
    if (!isFirstUes) {
      sharedPreferences.setBool(keyFirstUserApp, true);
      await _flutterSecureStorage.deleteAll();
    }
  }

  @override
  Future<void> clear() {
    sharedPreferences.clear();
    sharedPreferences.setBool(keyFirstUserApp, true);
    return _flutterSecureStorage.deleteAll();
  }

  @override
  Future<void> setFCMToken(String fcmToken) async {
    // TODO: implement setFCMToken
    await sharedPreferences.setString(keyFCMToken, fcmToken);
  }

  @override
  Future<void> setIsBound(bool isBound) async {
    // TODO: implement setIsBound
    await sharedPreferences.setBool(keyBound, isBound);
  }

  @override
  Future<void> setKeyWord(String keyWord) async {
    // TODO: implement setKeyWord
    await sharedPreferences.setString(keyKeyWord, keyWord);
  }

  @override
  Future<void> setPhoneNumber(String phoneNumber) async {
    // TODO: implement setPhoneNumber
    await sharedPreferences.setString(keyPhoneNumber, phoneNumber);
  }

  @override
  Future<void> cacheLanguageCode(String language) async {
    await sharedPreferences.setString(keyLanguageCode, language);
  }

  @override
  // TODO: implement fcmToken
  String get fcmToken => sharedPreferences.getString(keyFCMToken) ?? '';

  @override
  // TODO: implement isBound
  bool get isBound => sharedPreferences.getBool(keyBound) ?? false;
  @override
  // TODO: implement keyword
  String get keyword => sharedPreferences.getString(keyKeyWord) ?? '';

  @override
  // TODO: implement phoneNumber
  String get phoneNumber => sharedPreferences.getString(keyPhoneNumber) ?? '';

  @override
  String get languageCode =>
      sharedPreferences.getString(keyLanguageCode) ?? vietnamCode;

  // @override
  // Future<void> cacheAccessToken(String token) async {
  //   sharedPreferences.setString(keyAccessToken, token);
  //   return await _flutterSecureStorage.write(key: keyAccessToken, value: token);
  // }

  // @override
  // Future<void> cacheRefreshToken(String refreshToken) async {
  //   return await _flutterSecureStorage.write(
  //       key: keyRefreshToken, value: refreshToken);
  // }

  // @override
  // Future<String?> accessToken() async {
  //   return await _flutterSecureStorage.read(key: keyAccessToken);
  // }

  // @override
  // Future<String?> refreshToken() async {
  //   return await _flutterSecureStorage.read(key: keyRefreshToken);
  // }

  // @override
  // Future<void> cacheUserID(String userId) {
  //   return _flutterSecureStorage.write(key: keyUserId, value: userId);
  // }

  // @override
  // Future<String?> userId() {
  //   return _flutterSecureStorage.read(key: keyUserId);
  // }

  // @override
  // Future<void> cacheUserRole(String userRole) {
  //   return sharedPreferences.setString(keyUserRole, userRole);
  // }

  // @override
  // String get userRole => sharedPreferences.getString(keyUserRole) ?? '';

  // @override
  // Future<void> cacheGroupPermission(List<String> permission) async {
  //   await sharedPreferences.setStringList(keyPermissions, permission);
  // }

  // @override
  // List<String> get permission =>
  //     sharedPreferences.getStringList(keyPermissions) ?? [];

  // @override
  // Future<void> cacheResendToken(int? resendToken) async {
  //   if (resendToken == null) {
  //     sharedPreferences.remove(keyRefreshToken);
  //     return;
  //   }
  //   await sharedPreferences.setInt(keyRefreshToken, resendToken);
  // }

  // @override
  // Future<void> cacheVerificationId(String verificationId) async {
  //   await sharedPreferences.setString(keyVerificationId, verificationId);
  // }

  // @override
  // int? get resendToken => sharedPreferences.getInt(keyRefreshToken);

  // @override
  // String get verificationId =>
  //     sharedPreferences.getString(keyVerificationId) ?? '';

  // @override
  // Future<void> cacheUID(String uid) async {
  //   await sharedPreferences.setString(keyUID, uid);
  // }

  // @override
  // Future<void> cacheRefCode(String refCode) async {
  //   await sharedPreferences.setString(keyRefCode, refCode);
  // }

  // @override
  // String get refCode => sharedPreferences.getString(keyRefCode) ?? '';

  // @override
  // String get uid => sharedPreferences.getString(keyUID) ?? '';

  // @override
  // Future<void> cachePassword(String password) =>
  //     _flutterSecureStorage.write(key: keyPassword, value: password);

  // @override
  // Future<String> getPassword() async =>
  //     (await _flutterSecureStorage.read(key: keyPassword) ?? '');
}
