import 'package:flutter/cupertino.dart';
import 'package:flutter_app/bloc/bloc_event.dart';

class LoginEvent extends BlocEvent {
  final String token;
  const LoginEvent({@required this.token}) : super(childProps: const []);
}

class LogoutEvent extends BlocEvent {}
