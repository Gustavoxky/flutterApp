import 'package:equatable/equatable.dart';

import '../model/data_model.dart';

abstract class CubitStates extends Equatable{}

class InitialState extends CubitStates{
  @override
  List<Object> get props => [];
}
class WelcomeState extends CubitStates{
  @override
  List<Object> get props => [];
}
class LoadingStates extends CubitStates{
  @override
  List<Object> get props => [];
}
class LoadedStates extends CubitStates{
  LoadedStates(this.places);
  final List<DataModel> places;
  @override
  List<Object> get props => [places];
}

class DetailStates extends CubitStates{
  DetailStates(this.place);
  final DataModel place;
  @override
  List<Object> get props => [place];
}