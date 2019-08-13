// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// BlocProviderGenerator
// **************************************************************************

class $Provider extends Provider {
  static T of<T extends Bloc>() {
    switch (T) {
      case LoginBloc:
        {
          return BlocCache.getBlocInstance(
              "LoginBloc", () => LoginBloc.instance());
        }
      case ListUserBloc:
        {
          return BlocCache.getBlocInstance(
              "ListUserBloc", () => ListUserBloc.instance());
        }
    }
    return null;
  }

  static void dispose<T extends Bloc>() {
    switch (T) {
      case LoginBloc:
        {
          BlocCache.dispose("LoginBloc");
          break;
        }
      case ListUserBloc:
        {
          BlocCache.dispose("ListUserBloc");
          break;
        }
    }
  }
}
