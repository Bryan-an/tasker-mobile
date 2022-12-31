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
  var error = e.response?.data['error'] ?? e.response?.data['errors'];
  var statusCode = e.response?.statusCode;

  if (kDebugMode) {
    print(error);
  }

  final snackBarState = scaffoldMessengerKey.currentState;

  if (error is List) {
    if (statusCode == 400) {
      var errorMessages = extractErrorMessages(error);

      for (final message in errorMessages) {
        snackBarState?.showSnackBar(
          SnackBar(
            content: Text(message),
          ),
        );
      }
    } else {
      showGeneralError(error);
    }
  } else {
    snackBarState?.showSnackBar(
      SnackBar(
        content: Text((error as String).capitalize()),
      ),
    );
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
