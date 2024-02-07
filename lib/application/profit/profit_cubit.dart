import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/application/profit/profit_state.dart';

class ProfitCubit extends Cubit<ProfitState> {
  ProfitCubit() : super(ProfitInitial());
}
