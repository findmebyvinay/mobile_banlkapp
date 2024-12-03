import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_bankapp/bloc/auth_event.dart';
import 'package:mobile_bankapp/bloc/auth_state.dart';

class AuthBloc  extends Bloc<AuthEvent,AuthState>{
  AuthBloc():super(AuthInitial()){
    on<LoginEvent> (_onLogin);
  }
void _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
  emit(AuthLoading());
  await Future.delayed(const Duration(seconds: 2));

  if(event.username=='user1@gmail.com' && event.password=='user123'){
    emit(AuthAuthenticated(event.username, 50000));
  }
  else {
    emit(AuthError('invalid username or password'));
  }
}
  
}
