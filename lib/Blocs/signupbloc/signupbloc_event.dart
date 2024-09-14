part of 'signupbloc_bloc.dart';

@freezed
class SignupblocEvent with _$SignupblocEvent {
  const factory SignupblocEvent.signup({required String name, required String password}) = Signup;
}