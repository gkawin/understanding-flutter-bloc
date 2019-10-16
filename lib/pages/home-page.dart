import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/authentication_bloc.dart';
import 'package:flutter_app/bloc/authentication_event.dart';
import 'package:flutter_app/bloc/authentication_state.dart';
import 'package:flutter_app/bloc/bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({ this.title });
  @override
  State<StatefulWidget> createState() => _HomePage();

  handleBlocListener(context, state) {
    if (state is AuthenticationLoadingState) {

    }
    print('==== STATE ==== ${state.toString()}');
  }
}

class _HomePage extends State<HomePage> {
  AuthenticationBloc _authenticationBloc = AuthenticationBloc();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, BlocState>(
      listener: widget.handleBlocListener,
      bloc: _authenticationBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                'kkkkk',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _authenticationBloc.dispatch(LoginEvent(token: 'this is token naaaaa'));
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      )
    );

  }
}