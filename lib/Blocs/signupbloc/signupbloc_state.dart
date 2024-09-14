part of 'signupbloc_bloc.dart';

@freezed
class SignupblocState with _$SignupblocState {
  const factory SignupblocState({required String message}) = _SignupblocState;

  factory SignupblocState.initial(){
    return const SignupblocState(message: '');
  }
}
