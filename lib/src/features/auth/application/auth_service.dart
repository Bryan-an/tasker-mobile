import 'package:flutter/foundation.dart';
import 'package:tasker_mobile/src/config/export.dart';
import 'package:tasker_mobile/src/errors/export.dart';

class AuthService {
  final String _endpoint = '/auth';

  AuthService();

  Future<void> register(Map<String, dynamic> user) async {
    var response = await dio.post('$_endpoint/register', data: user);
    var data = response.data;

    if (response.statusCode != 201) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> login(Map<String, dynamic> user) async {
    var response = await dio.post('$_endpoint/login', data: user);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    String accessToken = data['token'];
    final prefs = await futurePrefs;
    prefs.setString('accessToken', accessToken);
    dio.options.headers['authorization'] = 'Bearer $accessToken';

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> loginWithFacebook() async {
    var response = await dio.get('$_endpoint/login/facebook');
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    String accessToken = data['token'];
    final prefs = await futurePrefs;
    prefs.setString('accessToken', accessToken);
    dio.options.headers['authorization'] = 'Bearer $accessToken';

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> loginWithGoogle() async {
    var response = await dio.get('$_endpoint/login/google');
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    String accessToken = data['token'];
    final prefs = await futurePrefs;
    prefs.setString('accessToken', accessToken);
    dio.options.headers['authorization'] = 'Bearer $accessToken';

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> verifyEmail(Map<String, dynamic> verificationData) async {
    var response =
        await dio.post('$_endpoint/verify/email', data: verificationData);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }

  Future<void> resendVerificationCode(
      Map<String, dynamic> verificationData) async {
    var response =
        await dio.post('$_endpoint/verify/resendCode', data: verificationData);
    var data = response.data;

    if (response.statusCode != 200) {
      throw HttpException();
    }

    if (kDebugMode) {
      print(data);
    }
  }
}
