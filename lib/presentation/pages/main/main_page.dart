import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/application/main/main_cubit.dart';
import 'package:wallet_app/application/main/main_state.dart';
import 'package:wallet_app/presentation/assets/asset_index.dart';
import 'package:wallet_app/presentation/assets/res/screen_size.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocListener<MainCubit, MainState>(
        listener: (context, state) {},
        child: Builder(
          builder: (context) => BlocBuilder<MainCubit, MainState>(
            builder: (context, state) => Builder(builder: (context) {
              final cubit = context.read<MainCubit>();
              return Scaffold(
                body: cubit.pages[cubit.currentPage],
                bottomNavigationBar: BottomNavigationBar(
                  elevation: 0,
                  selectedLabelStyle: TextStyle(fontSize: ScreenSize.sp12),
                  unselectedLabelStyle: TextStyle(fontSize: ScreenSize.sp12),
                  currentIndex: cubit.currentPage,
                  onTap: cubit.ontap,
                  showSelectedLabels: true,
                  unselectedItemColor: AppTheme.colors.black,
                  fixedColor: AppTheme.colors.primary,
                  backgroundColor: AppTheme.colors.white,
                  type: BottomNavigationBarType.fixed,
                  items: [
                    bottomWidget(AppIcons.home, "Asosiy"),
                    bottomWidget(AppIcons.outlay, "Xarajatlar"),
                    bottomWidget(AppIcons.profit, "Daromadlar"),
                    bottomWidget(AppIcons.settings, "Sozlamalar"),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomWidget(String activIcon, String label) =>
      BottomNavigationBarItem(
        activeIcon: SvgPicture.asset(
          color: AppTheme.colors.primary,
          activIcon,
          height: ScreenSize.h20,
        ),
        icon: SvgPicture.asset(
          activIcon,
          height: ScreenSize.h20,
        ),
        backgroundColor: AppTheme.colors.white,
        label: label,
      );
}
