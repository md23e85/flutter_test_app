import 'package:flutter/material.dart';
import 'package:test_app/src/presentation/blocs/list_user_bloc.dart';
import 'package:test_app/src/presentation/blocs/provider.dart';
import 'package:test_app/src/presentation/model/user_model.dart';

class ListUserPage extends StatefulWidget {
  @override
  ListUserPageState createState() => ListUserPageState();
}

class ListUserPageState extends State<ListUserPage> {
  ListUserBloc _bloc = $Provider.of<ListUserBloc>();
  ScrollController _scrollController = new ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _bloc.uploadListUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: StreamBuilder(
                stream: _bloc.users,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(child: CircularProgressIndicator(), alignment: Alignment.center);
                  }
                  if (snapshot.connectionState == ConnectionState.active) {
                    _isLoading = false;
                    return NotificationListener(
                        onNotification: (ScrollNotification notification) {
                          if (notification.metrics.pixels ==
                                  notification.metrics.maxScrollExtent &&
                              !_isLoading) {
                            _isLoading = true;
                            _bloc.uploadListUser();
                          }
                        },
                        child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return _listItem(snapshot.data[index]);
                            },
                            itemCount: snapshot.data.length,
                            controller: _scrollController));
                  }
                })));
  }
}

Widget _listItem(UserModel user) {
  return Card(
      child: Padding(
          child: Text(user.name, style: TextStyle(fontSize: 36)),
          padding: EdgeInsets.all(10)));
}
