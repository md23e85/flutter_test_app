import 'package:test_app/src/generated/users.pb.dart';

class UserModel {
  String token;
  String roles;
  String name;
  String refreshToken;
  String defaultEmail;
  int accountId;
  int userId;

  UserModel.fromJson(Map<String, dynamic> json)
      : token = json['token'],
        roles = json['roles'],
        refreshToken = json['refreshToken'],
        defaultEmail = json['defaultEmail'],
        accountId = json['accountId'],
        userId = json['userId'];

  UserModel.fromAuthResponse(GetAuthTokenResponse resp)
      : token = resp.token,
      roles = resp.roles[0],
      accountId = resp.accountId,
      userId = resp.userId,
      refreshToken = resp.refreshToken,
      defaultEmail = resp.defaultEmail;

  UserModel.fromUserResponse(User user)
      : userId = user.id,
        name = user.name;

  Map<String, dynamic> toJson() {
    return {
      'token' : token,
      'refreshToken' : refreshToken,
      'defaultEmail' : defaultEmail,
      'roles' : roles,
      'accountId' : accountId,
      'userId' : userId
    };
  }
}
