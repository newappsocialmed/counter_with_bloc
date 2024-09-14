part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.login({required String name, required String password}) = Login;
  const factory LoginEvent.updatevalue({required int id}) = Updatevalue;
}