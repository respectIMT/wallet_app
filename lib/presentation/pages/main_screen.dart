import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/application/screen_manager/screen_manager.dart';
import '../assets/res/app_icons.dart';

// ignore: must_be_immutable
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
                    Expanded(
                      child: provider.pages[provider.currentPage],
                    ),
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
                          color: Colors.green,
                        ),
                        icon: SvgPicture.asset(
                          AppIcons.home,
                          height: 25,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.white,
                        label: ""),
                    BottomNavigationBarItem(
                        activeIcon: SvgPicture.asset(
                          AppIcons.up,
                          height: 25,
                        ),
                        icon: SvgPicture.asset(
                          AppIcons.up,
                          height: 25,
                        ),
                        backgroundColor: Colors.white,
                        label: ""),
                    BottomNavigationBarItem(
                        activeIcon: SvgPicture.asset(
                          AppIcons.more,
                          height: 25,
                        ),
                        icon: SvgPicture.asset(
                          AppIcons.more,
                          height: 25,
                        ),
                        backgroundColor: Colors.white,
                        label: ""),
                    BottomNavigationBarItem(
                        activeIcon: SvgPicture.asset(
                          AppIcons.settings,
                          height: 25,
                        ),
                        icon: SvgPicture.asset(
                          AppIcons.settings,
                          height: 25,
                        ),
                        backgroundColor: Colors.white,
                        label: ""),
                  ],
                ),
              )),
    );
  }
}
