import 'dart:async';

import 'package:test_app/src/resources/strings.dart';

class Validators {
  static final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink) {
        if (email.isNotEmpty) {
          sink.add(email);
        } else {
          sink.addError(Strings.ERROR_LOGIN_VALIDATE);
        }
      }
  );

  static final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
        if (password.length > 3) {
          sink.add(password);
        } else {
          sink.addError(Strings.ERROR_PASSWORD_VALIDATE);
        }
      }
  );
}