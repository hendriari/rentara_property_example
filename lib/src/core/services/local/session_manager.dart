import 'package:flutter/material.dart';
import 'package:rentara_property_clone/src/core/services/local/local_keys.dart';
import 'package:rentara_property_clone/src/core/services/local/secure_storage_services.dart';

class SessionManager extends ChangeNotifier {
  final SecureStorageService _storage;

  String? _token;

  SessionManager(this._storage);

  String? get token => _token;

  bool get isLoggedIn => _token != null;

  Future<void> init() async {
    _token = await _storage.load(key: LocalKeys.accessTokenKey);
    notifyListeners();
  }

  Future<void> setToken(String? token) async {
    _token = token;
    if (token != null) {
      await _storage.save(key: LocalKeys.accessTokenKey, value: token);
      notifyListeners();
    }
  }

  Future<void> clear() async {
    _token = null;
    await _storage.delete(key: LocalKeys.accessTokenKey);
    notifyListeners();
  }
}
