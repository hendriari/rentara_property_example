import 'dart:developer' as dev;

import 'package:rentara_property_clone/src/core/utils/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

sealed class SharedPreferenceServices {
  Future<void> saveData(
    String key,
    SharedPreferenceDataType type,
    dynamic value,
  );

  Future<void> save<E>({required String key, required E value});

  Future<E?> load<E>({required String key});

  Future<void> reset();

  Future<void> remove({required String key});
}

class SharedPreferenceServicesImpl extends SharedPreferenceServices {
  void _logError(String message) {
    dev.log("❌ $message", name: "Shared Preference Service");
  }

  @override
  Future<void> saveData(
    String key,
    SharedPreferenceDataType type,
    value,
  ) async {
    try {
      final sPrefs = await SharedPreferences.getInstance();

      switch (type) {
        case SharedPreferenceDataType.int:
          await sPrefs.setInt(key, value);
          break;
        case SharedPreferenceDataType.string:
          await sPrefs.setString(key, value);
          break;
        case SharedPreferenceDataType.bool:
          await sPrefs.setBool(key, value);
          break;
        case SharedPreferenceDataType.double:
          await sPrefs.setDouble(key, value);
        case SharedPreferenceDataType.listString:
          await sPrefs.setStringList(key, value);
      }
    } catch (e) {
      _logError(e.toString());
    }
  }

  @override
  Future<void> save<E>({required String key, required E value}) async {
    try {
      final sPrefs = await SharedPreferences.getInstance();

      switch (value.runtimeType) {
        case const (bool):
          await sPrefs.setBool(key, value as bool);
        case const (String):
          await sPrefs.setString(key, value as String);
        case const (int):
          await sPrefs.setInt(key, value as int);
        case const (double):
          await sPrefs.setDouble(key, value as double);
        case const (List<String>):
          await sPrefs.setStringList(key, value as List<String>);
      }
    } catch (e) {
      _logError(e.toString());
    }
  }

  @override
  Future<E?> load<E>({required String key}) async {
    final sPrefs = await SharedPreferences.getInstance();

    final result = sPrefs.get(key);

    if (result is! E) {
      await sPrefs.remove(key);
      return null;
    }

    return result;
  }

  @override
  Future<void> remove({required String key}) async {
    try {
      final sPrefs = await SharedPreferences.getInstance();
      await sPrefs.remove(key);
    } catch (e) {
      _logError(e.toString());
    }
  }

  @override
  Future<void> reset() async {
    try {
      final sPrefs = await SharedPreferences.getInstance();
      await sPrefs.clear();
    } catch (e) {
      _logError(e.toString());
    }
  }
}
