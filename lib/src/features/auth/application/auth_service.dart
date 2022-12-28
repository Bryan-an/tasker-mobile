import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:tasker_mobile/src/errors/export.dart';
import 'package:localstorage/localstorage.dart';

class AuthService {
  final http.Client _httpClient;
  final String _baseUrl = '192.168.68.107:8080';
  final String _endpoint = '/api/v1/auth';
  final LocalStorage storage = LocalStorage('tasker');

  AuthService({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<void> register(Map<String, dynamic> user) async {
    final url = Uri.http(_baseUrl, '$_endpoint/register');
    var response = await _httpClient.post(url, body: user);
    var data = jsonDecode(response.body);

    if (response.statusCode != 201) {
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

  Future<void> login(Map<String, dynamic> user) async {
    final url = Uri.http(_baseUrl, '$_endpoint/login');
    var response = await _httpClient.post(url, body: user);
    var data = jsonDecode(response.body);

    if (response.statusCode != 200) {
      dynamic error = data['error'] ?? data['errors'];

      if (kDebugMode) {
        print(error);
      }

      throw HttpException(error);
    }

    String token = data['token'];
    storage.setItem('accessToken', token);

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> loginWithFacebook() async {
    final url = Uri.http(_baseUrl, '$_endpoint/login/facebook');
    var response = await _httpClient.get(url);
    var data = jsonDecode(response.body);

    if (response.statusCode != 200) {
      dynamic error = data['error'] ?? data['errors'];

      if (kDebugMode) {
        print(error);
      }

      throw HttpException(error);
    }

    String token = data['token'];
    storage.setItem('accessToken', token);

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> loginWithGoogle() async {
    final url = Uri.http(_baseUrl, '$_endpoint/login/google');
    var response = await _httpClient.get(url);
    var data = jsonDecode(response.body);

    if (response.statusCode != 200) {
      dynamic error = data['error'] ?? data['errors'];

      if (kDebugMode) {
        print(error);
      }

      throw HttpException(error);
    }

    String token = data['token'];
    storage.setItem('accessToken', token);

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> verifyEmail(Map<String, dynamic> verificationData) async {
    final url = Uri.http(_baseUrl, '$_endpoint/verify/email');
    var response = await _httpClient.post(url, body: verificationData);
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

  Future<void> resendVerificationCode(
      Map<String, dynamic> verificationData) async {
    final url = Uri.http(_baseUrl, '$_endpoint/verify/resendCode');
    var response = await _httpClient.post(url, body: verificationData);
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
