import 'package:grpc/grpc.dart';
import 'package:test_app/src/generated/users.pbgrpc.dart';
import 'package:test_app/src/presentation/model/user_model.dart';

import 'grpc_client_singleton.dart';

class ListUserService extends BaseService {
  List<UserModel> _uploadUsers = List();

  getListUser(Function function) async {
    ClientChannel channel = await getBaseChannel();
    UserModel user = await getUser();
    UsersServiceClient client = UsersServiceClient(channel,
        options: CallOptions(metadata: {"bearer": user.token}));
    client.listUsers(ListUsersRequest()).then((resp) {
      resp.users.forEach((user) {
        _uploadUsers.add(UserModel.fromUserResponse(user));
      });
      _uploadUsers.sort((a, b) => a.name.compareTo(b.name));
      function(_uploadUsers);
    });
  }
}
