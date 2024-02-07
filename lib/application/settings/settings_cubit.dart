import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/application/settings/settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());
}
