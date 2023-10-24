import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/application/screen_manager/screen_manager.dart';
import 'package:wallet_app/presentation/assets/asset_index.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ScreenProvider(),
      child: Consumer<ScreenProvider>(
        builder: (context, provider, child) => Scaffold(
          body: Column(
            children: [
              Expanded(child: provider.pages[provider.currentPage]),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: provider.currentPage,
            onTap: provider.ontap,
            items: [
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    AppIcons.home,
                    height: 25,
                    color: AppTheme.colors.primary,
                  ),
                  icon: SvgPicture.asset(
                    AppIcons.home,
                    height: 25,
                    color: Colors.black,
                  ),
                  backgroundColor: AppTheme.colors.secondary,
                  label: ""),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    AppIcons.outlay,
                    height: 25,
                    color: AppTheme.colors.primary,
                  ),
                  icon: SvgPicture.asset(
                    AppIcons.outlay,
                    height: 25,
                  ),
                  backgroundColor: AppTheme.colors.secondary,
                  label: ""),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    AppIcons.profit,
                    height: 25,
                    color: AppTheme.colors.primary,
                  ),
                  icon: SvgPicture.asset(
                    AppIcons.profit,
                    height: 25,
                  ),
                  backgroundColor: AppTheme.colors.secondary,
                  label: ""),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  color: AppTheme.colors.primary,
                  AppIcons.settings,
                  height: 25,
                ),
                icon: SvgPicture.asset(
                  AppIcons.settings,
                  height: 25,
                ),
                backgroundColor: AppTheme.colors.secondary,
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
