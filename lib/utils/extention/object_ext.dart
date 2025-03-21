import 'dart:io';

import 'package:dio/dio.dart';

extension ObjectExt on Object {
  String get extractErrorMsg {
    if (this is DioException) {
      final dioException = this as DioException;
      switch (dioException.type) {
        case DioExceptionType.badResponse:
          try {
            return dioException.response?.data['message'];
          } catch (err) {
            return dioException.response?.data ?? dioException.message;
          }

        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return 'Connection timeout';
        case DioExceptionType.badCertificate:
        case DioExceptionType.cancel:
        case DioExceptionType.connectionError:
          if (dioException is SocketException) {
            final errorMessage = dioException.error.toString().toLowerCase();

            if (errorMessage.contains('connection refused')) {
              return 'Service Down Pls Contact System Admin';
            } else if (errorMessage.contains('failed host lookup') ||
                errorMessage.contains('network is unreachable')) {
              return 'No Internet Connection';
            } else {
              return 'Service Down Pls Contact System Admin';
            }
          } else {
            return 'Service Down Pls Contact System Admin';
          }

        default:
          if (dioException.message?.isNotEmpty ?? false) {
            return dioException.message!;
          } else {
            return dioException.error.toString();
          }
      }
    }

    return toString();
  }
}
