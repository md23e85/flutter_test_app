import 'dart:async';

import 'package:dash/dash.dart';
import 'package:test_app/src/presentation/model/user_model.dart';
import 'package:test_app/src/presentation/services/list_user_service.dart';

class ListUserBloc extends Bloc{
  final ListUserService _service = ListUserService();
  StreamController _controller = StreamController<List<UserModel>>.broadcast();

  Stream<List<UserModel>> get users => _controller.stream;
  Function(List<UserModel>) get fetchUsers => _controller.sink.add;

  void uploadListUser() async => await _service.getListUser(fetchUsers);

  @override
  dispose() => _controller.close();

  static Bloc instance() => ListUserBloc();
}