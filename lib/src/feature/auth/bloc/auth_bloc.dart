import 'package:bloc_signin_test/src/feature/auth/bloc/auth_event.dart';
import 'package:bloc_signin_test/src/feature/auth/bloc/auth_state.dart';
import 'package:bloc_signin_test/src/feature/auth/repository/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(AuthState initialState, this.repository) : super(initialState);

  AuthRepository repository;
  

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    var prefs = await SharedPreferences.getInstance();
    if (event is StartEvent) {
      yield LoginInitState();
    } else if (event is LoginButtonPressed) {
      yield LoginLoadingState();
      var data = await repository.login(event.email!, event.password!);
      if (data['message'] == 'success') {
        prefs.setString("isLoggedIn", data['message']);
        yield UserLoginSuccess();
      } else {
        yield LoginErrorState(message: data["message"]);
      }
    }
    // return;
  }
}
