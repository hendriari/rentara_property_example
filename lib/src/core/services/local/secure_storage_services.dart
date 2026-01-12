import 'dart:developer' as dev;

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

sealed class SecureStorageService {
  Future<void> save({required String key, required String value});

  Future<String?> load({required String key});

  Future<void> delete({required String key});

  Future<void> reset();
}

class SecureStorageServiceImpl extends SecureStorageService {
  final FlutterSecureStorage _secureStorage;

  SecureStorageServiceImpl(this._secureStorage);

  void _logError(String message) {
    dev.log("❌ $message", name: "Secure Storage Service");
  }

  @override
  Future<void> save({required String key, required String value}) async {
    try {
      await _secureStorage.write(key: key, value: value);
    } catch (e) {
      _logError(e.toString());
    }
  }

  @override
  Future<String?> load({required String key}) async {
    final result = await _secureStorage.read(key: key);

    if (result == null) {
      await _secureStorage.delete(key: key);
      return null;
    }

    return result;
  }

  @override
  Future<void> delete({required String key}) async {
    try {
      await _secureStorage.delete(key: key);
    } catch (e) {
      _logError(e.toString());
    }
  }

  @override
  Future<void> reset() async {
    try {
      await _secureStorage.deleteAll();
    } catch (e) {
      _logError(e.toString());
    }
  }
}
