import 'package:flutter/foundation.dart';
import 'package:tasker_mobile/src/config/export.dart';
import 'package:tasker_mobile/src/errors/export.dart';

class UserService {
  final String _endpoint = '/users';

  UserService();

  Future<dynamic> get() async {
    var response = await dio.get(_endpoint);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }

    return data['user'];
  }

  Future<void> update(Map<String, dynamic> user) async {
    var response = await dio.put(_endpoint, data: user);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> delete() async {
    var response = await dio.delete(_endpoint);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }
}
