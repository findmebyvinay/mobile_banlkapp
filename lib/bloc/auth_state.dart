import 'package:equatable/equatable.dart';

class AuthState extends Equatable{
  List<Object> get props => [];

}

class AuthInitial extends AuthState{

}

class AuthLoading extends AuthState{

}

class AuthAuthenticated extends AuthState{

  String username;
  double amount;

   AuthAuthenticated(this.username,this.amount);

   List<Object> get props=> [username,amount];
}

class AuthError extends AuthState{
  String message;
  AuthError(this.message);
  List<Object> get props=>[message];
}