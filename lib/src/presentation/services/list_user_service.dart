import 'package:grpc/grpc.dart';
import 'package:test_app/src/generated/users.pbgrpc.dart';
import 'package:test_app/src/presentation/model/user_model.dart';

import 'grpc_client_singleton.dart';

class ListUserService extends BaseService {
  String _nextPageToken = "";
  static final int _COUNT_PAGINATION = 50;
  List<UserModel> _uploadUsers = List();

  getListUser(Function function) async {
    ClientChannel channel = await getBaseChannel();
    UserModel user = await getUser();
    UsersServiceClient client = UsersServiceClient(channel,
        options: CallOptions(metadata: {"bearer": user.token}));
    client
        .listUsers(ListUsersRequest()
          ..pageSize = _COUNT_PAGINATION
          ..pageToken = _nextPageToken..orderBy = EnumOrderBy.DESC)
        .then((resp) {
      _nextPageToken = resp.nextPageToken;
      resp.users.forEach((user) {
        _uploadUsers.add(UserModel.fromUserResponse(user));
      });
      _uploadUsers.sort((a,b) => a.name.compareTo(b.name));
      function(_uploadUsers);
    });
  }
}
