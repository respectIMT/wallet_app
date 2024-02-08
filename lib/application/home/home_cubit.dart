import 'home_state.dart';
import 'package:bloc/bloc.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());

  Map<String, double> dataMapChart = {
    "Daromadlar": 1,
    "Xarajatlar": 1,
  };
}
