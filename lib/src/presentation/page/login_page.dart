import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/src/presentation/blocs/login_bloc.dart';
import 'package:test_app/src/presentation/blocs/provider.dart';
import 'package:test_app/src/resources/strings.dart';

import 'list_user_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  LoginBloc _bloc = $Provider.of<LoginBloc>();
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    _bloc.login.listen((resp) {
      resp.isSuccess
          ? Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ListUserPage()))
          : _scaffoldKey.currentState
              .showSnackBar(SnackBar(content: Text(resp.data)));
    });
    return Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
            child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              emailField(_bloc),
              passwordField(_bloc),
              submitButton(_bloc)
            ],
          ),
        )));
  }
}

Widget emailField(LoginBloc bloc) {
  return StreamBuilder(
    stream: bloc.email,
    builder: (context, snapshot) {
      return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: Strings.LOGIN,
          labelText: Strings.LOGIN,
          errorText: snapshot.error,
        ),
        onChanged: (String value) {
          bloc.updateEmail(value);
        },
      );
    },
  );
}

Widget passwordField(LoginBloc bloc) {
  return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot) {
      return TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: Strings.PASSWORD,
          labelText: Strings.PASSWORD,
          errorText: snapshot.error,
        ),
        onChanged: (String value) {
          bloc.updatePassword(value);
        },
      );
    },
  );
}

Widget submitButton(LoginBloc bloc) {
  return StreamBuilder<bool>(
    stream: bloc.submitValid,
    builder: (context, snapshot) {
      return RaisedButton(
        child: Text(Strings.SUBMIT_BUTTON),
        color: Colors.blue,
        onPressed: snapshot.hasData ? bloc.submit : null,
      );
    },
  );
}
