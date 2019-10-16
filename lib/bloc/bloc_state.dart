import 'package:equatable/equatable.dart';

abstract class BlocState extends Equatable {
  final List<Object> childProps;
  const BlocState({ this.childProps });

  @override
  List<Object> get props => this.childProps;
}