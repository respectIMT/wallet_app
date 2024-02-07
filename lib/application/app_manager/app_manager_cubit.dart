import 'package:bloc/bloc.dart';
import 'package:wallet_app/presentation/assets/asset_index.dart';
import 'package:wallet_app/presentation/assets/res/screen_size.dart';

part 'app_manager_state.dart';

class AppManagerCubit extends Cubit<AppManagerState> {
  AppManagerCubit() : super(AppManagerLoading());

  dynamic subscription;

  Future<void> init() async {
    try {
      await AppTheme.init();
      await ScreenSize.setSizes();
      emit(AppManagerInitial());
    } catch (e) {
      emit(
        AppManagerError(e.toString()),
      );
    }
  }
}
