
import 'package:dash/dash.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test_app/src/presentation/model/base_response.dart';
import 'package:test_app/src/presentation/services/user_service.dart';
import 'package:test_app/src/utils/validators.dart';

class LoginBloc extends Bloc{
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _loginController = BehaviorSubject<BaseResponse>();

  final UserService _service = UserService();

  Function(String) get updateEmail => _emailController.sink.add;
  Function(String) get updatePassword => _passwordController.sink.add;
  Function(BaseResponse) get loginResponse => _loginController.sink.add;

  Stream<BaseResponse> get login => _loginController.stream;
  Stream<String> get email => _emailController.stream.transform(Validators.validateEmail);
  Stream<String> get password => _passwordController.stream.transform(Validators.validatePassword);
  Stream<bool> get submitValid => Observable.combineLatest2(email, password, (email, password) {
    return true;
  });

  submit() => _service.authUser(_emailController.value, _passwordController.value, loginResponse);

  static Bloc instance() => LoginBloc();

  dispose() {
    _emailController.close();
    _passwordController.close();
    _loginController.close();
  }
}