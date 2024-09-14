import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laravel_front/Repository/authrepo.dart';

part 'signupbloc_event.dart';
part 'signupbloc_state.dart';
part 'signupbloc_bloc.freezed.dart';

class SignupblocBloc extends Bloc<SignupblocEvent, SignupblocState> {
  SignupblocBloc() : super(SignupblocState.initial()) {
    on<Signup>(signupuser);
  }
  void signupuser(Signup event, Emitter emit) async {
    emit(state.copyWith(message: ''));
    var response = await AuthRepo().signin(name: event.name, password: event.password);
    emit(state.copyWith(message: response[0]['msg']));
  }
}
