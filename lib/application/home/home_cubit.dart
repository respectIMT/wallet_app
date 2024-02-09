import 'home_state.dart';
import 'package:bloc/bloc.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());

  Map<String, double> dataMapChart = {
    "Daromadlar": 7500000,
    "Xarajatlar": 4340000,
  };
  // final List<_SalesData> data = [
  //   _SalesData('Jan', 35),
  //   _SalesData('Feb', 28),
  //   _SalesData('Mar', 34),
  //   _SalesData('Apr', 32),
  //   _SalesData('May', 40)
  // ];
}
