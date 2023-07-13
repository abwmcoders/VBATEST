import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class LoginInitState extends AuthState {}

class LoginLoadingState extends AuthState {}

class UserLoginSuccess extends AuthState {}

class LoginErrorState extends AuthState {
  final String? message;

  LoginErrorState({this.message});
}
