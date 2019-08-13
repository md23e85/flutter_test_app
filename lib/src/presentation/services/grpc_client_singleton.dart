
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/src/presentation/model/user_model.dart';

abstract class BaseService {
  static final String USER_KEY = "USER_KEY";

  Future<ClientChannel> getBaseChannel() async {
    final file = await rootBundle.load('assets/tls.crt');
      return ClientChannel(
          'imperium-api.gimmevending.com',
          options: ChannelOptions(
            credentials: ChannelCredentials.secure(
                certificates: file.buffer.asUint8List(
                    file.offsetInBytes, file.lengthInBytes),
                onBadCertificate: allowBadCertificates),
          )
      );
  }


  Future<UserModel> getUser() async {
    SharedPreferences shrPref = await SharedPreferences.getInstance();
    if(shrPref.getString(USER_KEY) == null) {
      return null;
    } else {
      return UserModel.fromJson(jsonDecode(shrPref.getString(USER_KEY)));
    }
  }

  saveUser(UserModel user) async {
    SharedPreferences shrPref = await SharedPreferences.getInstance();
    shrPref.setString(USER_KEY, jsonEncode(user.toJson()));
  }

  cleanUser() async {
    SharedPreferences shrPref = await SharedPreferences.getInstance();
    shrPref.remove(USER_KEY);
  }
}