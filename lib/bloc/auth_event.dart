import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable{
  List<Object> get props=> [];
}

class LoginEvent extends AuthEvent{
  String username;
  String password;
  LoginEvent({
    this.username='',this.password=''
  });

  List<Object> get props=> [username,password];
}

class SignUpEvent extends AuthEvent{
String email;
String username;
String password;

SignUpEvent({this.email='',this.username='',this.password=''});

List<Object> get props=> [email,username,password];

}