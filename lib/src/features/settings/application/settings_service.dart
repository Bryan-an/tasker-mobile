import 'package:flutter/foundation.dart';
import 'package:tasker_mobile/src/config/export.dart';
import 'package:tasker_mobile/src/errors/export.dart';

class SettingsService {
  final String _endpoint = '/settings/';

  SettingsService();

  Future<dynamic> get() async {
    var response = await dio.get(_endpoint);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }

    return data['settings'];
  }

  Future<void> create(Map<String, dynamic> settings) async {
    var response = await dio.post(_endpoint, data: settings);
    var data = response.data;

    if (response.statusCode != 201) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> update(Map<String, dynamic> settings) async {
    var response = await dio.patch(_endpoint, data: settings);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> replace(Map<String, dynamic> settings) async {
    var response = await dio.put(_endpoint, data: settings);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }
}
