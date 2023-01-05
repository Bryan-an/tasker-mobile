import 'package:flutter/foundation.dart';
import 'package:tasker_mobile/src/config/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/errors/export.dart';

class TaskService {
  final String _endpoint = '/tasks';

  TaskService();

  Future<List<dynamic>> list(Map<String, dynamic> queryParams) async {
    var response = await dio.get(_endpoint, queryParameters: queryParams);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }

    return data['tasks'];
  }

  Future<dynamic> findOne(String id) async {
    var response = await dio.get('$_endpoint/$id');
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }

    return data['task'];
  }

  Future<void> insert(Map<String, dynamic> task) async {
    var response = await dio.post(_endpoint, data: task);
    var data = response.data;

    if (response.statusCode != 201) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> update(String id, Map<String, dynamic> task) async {
    var response = await dio.put('$_endpoint/$id', data: task);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> delete(String id) async {
    var response = await dio.delete('$_endpoint/$id');
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }
}
