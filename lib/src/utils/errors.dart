import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

List<String> extractErrorMessages(dynamic error) {
  final errorList = List<Map<String, dynamic>>.from(error);

  return errorList.map((e) => '${e['field']}: ${e['message']}').toList();
}

void showDioErrors(DioError e) {
  var error = e.response?.data['error'] ?? e.response?.data['errors'];
  var statusCode = e.response?.statusCode;

  if (kDebugMode) {
    print(error);
  }

  final snackBarState = snackBarKey.currentState;

  if (error is List) {
    var errorMessages = extractErrorMessages(error);

    if (statusCode == 400) {
      for (final message in errorMessages) {
        snackBarState?.showSnackBar(
          SnackBar(
            content: Text(message.capitalize()),
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

  final snackBarState = snackBarKey.currentState;

  snackBarState?.showSnackBar(
    const SnackBar(
      content: Text('Something went wrong!'),
    ),
  );
}
