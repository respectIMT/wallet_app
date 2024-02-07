import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/application/outlay/outlay_state.dart';

class OutlayCubit extends Cubit<OutlayState> {
  OutlayCubit() : super(OutlayInitial());
}
