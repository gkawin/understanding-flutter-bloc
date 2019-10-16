import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_app/bloc/bloc_event.dart';
import 'package:flutter_app/bloc/bloc_state.dart';
import './bloc.dart';

class AuthenticationBloc extends Bloc<BlocEvent, BlocState> {
  @override
  BlocState get initialState => InitialAuthenticationState();

  @override
  Stream<BlocState> mapEventToState(BlocEvent event) async* {
    if (event is LoginEvent) yield* login();
    if (event is LogoutEvent) {}
  }

  Stream<BlocState> login() async* {
    yield AuthenticationLoadingState();
  }
}
