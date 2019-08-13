import 'package:dash/dash.dart';

import 'list_user_bloc.dart';
import 'login_bloc.dart';

part 'provider.g.dart';

@BlocProvider.register(LoginBloc)
@BlocProvider.register(ListUserBloc)
abstract class Provider {}