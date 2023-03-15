import 'package:bloc/bloc.dart';
import 'package:eu/cubit/app_cubit_states.dart';
import 'package:eu/services/data_services.dart';

import '../model/data_model.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void GetData() async {
    try {
      emit(LoadingStates());
      places = await data.getInfo();
      emit(LoadedStates(places));
    } catch (e) {

    }
  }
  detailPage(DataModel data) {
    emit(DetailStates(data));
  }
  goHome() {
    emit(LoadedStates(places));
  }
}