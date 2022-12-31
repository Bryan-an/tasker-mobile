import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

List<String> extractErrorMessages(dynamic error) {
  return (error as List<Map<String, String>>)
      .map((e) => '${e['field']}: ${e['message']}')
      .toList();
}

void showDioErrors(DioError e) {
  var error = e.response!.data['error'] ?? e.response!.data['errors'];

  if (kDebugMode) {
    print(error);
  }

  final snackBarState = snackBarKey.currentState;

  if (error is List) {
    var errorMessages = extractErrorMessages(error);

    for (final message in errorMessages) {
      snackBarState?.showSnackBar(
        SnackBar(
          content: Text(message.capitalize()),
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
