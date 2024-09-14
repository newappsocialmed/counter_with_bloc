import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laravel_front/Repository/authrepo.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<Login>(loginevent);
    on<Updatevalue>(updatevalue);
  }
  void loginevent(Login event, Emitter<LoginState>emit)async{
    emit(state.copyWith(message: '', id: 0));
    try{
      List response = await AuthRepo().login(name: event.name, password: event.password);
      if(response[0]['status'] == 'success'){
        emit(state.copyWith(message: response[0]['msg'], id: int.tryParse(response[0]['id']) ?? 0, value: response[0]['value']));
      }
      else{
        emit(state.copyWith(message: response[0]['msg']));
      }
    }catch(e){
      rethrow;
    }
    
  }

  void updatevalue(Updatevalue event, Emitter<LoginState>emit)async{
    emit(state.copyWith(message: ''));
    try{
      List response = await AuthRepo().updatevalue(id: event.id);
      if(response[0]['status'] == 'success'){
        emit(state.copyWith(message: response[0]['msg'], value: response[0]['value']));
      }
      else{
        emit(state.copyWith(message: response[0]['msg']));
      }
    }catch(e){
      rethrow;
    }
    
  }
}
