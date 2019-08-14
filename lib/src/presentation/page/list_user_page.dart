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
                    return Container(
                        child: CircularProgressIndicator(),
                        alignment: Alignment.center);
                  }
                  if (snapshot.connectionState == ConnectionState.active) {
                    return ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 0) return _contactItem(snapshot.data[index], true);
                          if (snapshot.data[index].name[0] != snapshot.data[index - 1].name[0]) {
                            return _contactItem(snapshot.data[index], true);
                          }
                          return _contactItem(snapshot.data[index], false);
                        },
                        itemCount: snapshot.data.length);
                  }
                })));
  }
}

Widget _contactItem(UserModel user, bool isSeparator) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        isSeparator ? _separatorItem(user.name[0]) : SizedBox(),
        Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            color: Colors.grey[300],
            child: Row(
              children: <Widget>[
                ClipOval(
                    child: Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(user.name[0],
                      style: TextStyle(color: Colors.white, fontSize: 42)),
                )),
                Container(
                    child: Text(user.name, style: TextStyle(fontSize: 34)),
                    margin: EdgeInsets.only(left: 10))
              ],
            ))
      ]);
}

Widget _separatorItem(String name) {
  return Container(
    color: Colors.orange,
      width: double.infinity,
      child:
          Text(name, style: TextStyle(fontSize: 32), textAlign: TextAlign.left),
      margin: EdgeInsets.only(left: 10, right: 10));
}
