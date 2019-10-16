import 'package:equatable/equatable.dart';

abstract class BlocEvent extends Equatable {
  final List<Object> childProps;
  const BlocEvent({ this.childProps });

  @override
  List<Object> get props => this.childProps;
}