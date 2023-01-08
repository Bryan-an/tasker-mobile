import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

List<String> extractErrorMessages(dynamic error) {
  final errorList = List<Map<String, dynamic>>.from(error);

  return errorList.map((e) {
    final String field = e['field'];
    final String message = e['message'];

    return '${field.capitalize()}: ${message.capitalize()}';
  }).toList();
}

void showDioErrors(DioError e) {
  if (e.response?.data is! Map) {
    showGeneralError(e);
    return;
  }

  var error = e.response?.data['error'] ?? e.response?.data['errors'];
  var statusCode = e.response?.statusCode;

  if (kDebugMode) {
    print(error);
  }

  final snackBarState = scaffoldMessengerKey.currentState;

  if (statusCode == 401) {
    snackBarState?.showSnackBar(
      const SnackBar(
        content: Text('Your session has expired, please log in again'),
      ),
    );
  } else if (statusCode != null && statusCode >= 400 && statusCode <= 499) {
    if (error is List) {
      var errorMessages = extractErrorMessages(error);

      for (final message in errorMessages) {
        snackBarState?.showSnackBar(
          SnackBar(
            content: Text(message),
          ),
        );
      }
    } else {
      snackBarState?.showSnackBar(
        SnackBar(
          content: Text((error as String).capitalize()),
        ),
      );
    }
  } else {
    showGeneralError(error);
  }
}

void showGeneralError(Object error) {
  if (kDebugMode) {
    print(error);
  }

  final snackBarState = scaffoldMessengerKey.currentState;

  snackBarState?.showSnackBar(
    const SnackBar(
      content: Text('Something went wrong!'),
    ),
  );
}
