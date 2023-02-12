import 'package:dio/dio.dart';

var _options = BaseOptions(baseUrl: 'http://192.168.68.105:8080/api/v1');

final Dio dio = Dio(_options);
