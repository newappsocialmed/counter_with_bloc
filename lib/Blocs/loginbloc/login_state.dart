part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({required String message, required int id, required int value}) = _LoginState;

factory LoginState.initial(){
  return const LoginState(message: '', id: 0, value:0);
}
}