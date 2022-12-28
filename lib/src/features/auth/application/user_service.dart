import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';
import 'package:tasker_mobile/src/errors/export.dart';

class UserService {
  final http.Client _httpClient;
  final String _baseUrl = '192.168.68.107:8080';
  final String _endpoint = '/api/v1/users';
  final LocalStorage storage = LocalStorage('tasker');
  late String accessToken;

  UserService({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client() {
    accessToken = storage.getItem('accessToken') ?? '';
  }

  Future<dynamic> get() async {
    final url = Uri.http(_baseUrl, _endpoint);

    var response = await _httpClient.get(
      url,
      headers: {'Authorization': 'Bearer $accessToken'},
    );

    var data = jsonDecode(response.body);

    if (response.statusCode != 200) {
      dynamic error = data['error'] ?? data['errors'];

      if (kDebugMode) {
        print(error);
      }

      throw HttpException(error);
    }

    return data['user'];
  }

  Future<void> update(Map<String, dynamic> user) async {
    final url = Uri.http(_baseUrl, _endpoint);

    var response = await _httpClient.put(
      url,
      body: user,
      headers: {'Authorization': 'Bearer $accessToken'},
    );

    var data = jsonDecode(response.body);

    if (response.statusCode != 200) {
      dynamic error = data['error'] ?? data['errors'];

      if (kDebugMode) {
        print(error);
      }

      throw HttpException(error);
    }

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> delete() async {
    final url = Uri.http(_baseUrl, _endpoint);

    var response = await _httpClient.delete(
      url,
      headers: {'Authorization': 'Bearer $accessToken'},
    );

    var data = jsonDecode(response.body);

    if (response.statusCode != 200) {
      dynamic error = data['error'] ?? data['errors'];

      if (kDebugMode) {
        print(error);
      }

      throw HttpException(error);
    }

    if (kDebugMode) {
      print(data);
    }
  }
}
