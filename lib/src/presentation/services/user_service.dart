import 'package:grpc/grpc.dart';
import 'package:test_app/src/generated/users.pbgrpc.dart';
import 'package:test_app/src/presentation/model/base_response.dart';
import 'package:test_app/src/presentation/model/user_model.dart';

import 'grpc_client_singleton.dart';

class UserService extends BaseService {
  Future<dynamic> authUser (
      String login, String password, Function respCallback) async {
    ClientChannel channel = await getBaseChannel();
    UsersServiceClient client = UsersServiceClient(channel);
    await client
        .getAuthToken(GetAuthTokenRequest()
          ..email = login
          ..password = password
          ..accountCode = "utpd")
        .then((resp) {
          saveUser(UserModel.fromAuthResponse(resp));
      respCallback(BaseResponse()
        ..data = resp
        ..isSuccess = true);
    }).catchError((err) {
      respCallback(BaseResponse()
        ..data = err.message
        ..isSuccess = false);
    });
  }
}
