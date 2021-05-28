import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DioConfig {
  static String handleError(dynamic error, {bool showSnackbar = true}) {
    switch (error.runtimeType) {
      case DioError:
        final res = (error as DioError).response;
        if (res?.statusCode == 401) {
          Modular.to.popUntil((var route) {
            if (route.isFirst) {
              return true;
            }
            return false;
          });
          Modular.to.pushReplacementNamed('/login');
        }
        // var errorResponse = ErrorResponse.fromJson(res.data);
        // var messageToShow = errorResponse.message != null && errorResponse.message.isNotEmpty ? errorResponse.message : 'Um problema ocorreu: ${res.statusCode} - ${res.statusMessage}';
        var messageToShow = 'Um problema ocorreu: ${res?.statusCode} - ${res?.statusMessage}';
        if (showSnackbar) {
          // SnackbarMessages.buildErrorMessage(messageToShow);
          print(messageToShow);
        } else {
          return messageToShow;
        }
        break;
      default:
        var messageToShow = 'Um problema ocorreu.';
        if (showSnackbar) {
          // SnackbarMessages.buildErrorMessage(messageToShow);
          print(messageToShow);
        } else {
          return messageToShow;
        }
        break;
    }
    return '';
  }
}
