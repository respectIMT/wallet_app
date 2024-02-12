import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/assets/asset_index.dart';
import 'package:wallet_app/presentation/assets/res/screen_size.dart';

class TabBarMenu extends StatelessWidget {
  const TabBarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: ScreenSize.h5,
        horizontal: ScreenSize.w5,
      ),
      decoration: BoxDecoration(
          color: AppTheme.colors.grey100,
          borderRadius: BorderRadius.circular(ScreenSize.r20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: ScreenSize.h4, horizontal: ScreenSize.w5),
            decoration: BoxDecoration(
                color: AppTheme.colors.white,
                borderRadius: BorderRadius.circular(ScreenSize.r25)),
            child: Text(
              "Diagramma",
              textAlign: TextAlign.center,
              style: AppTheme.data.textTheme.bodySmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Gap(ScreenSize.w5),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: ScreenSize.h4, horizontal: ScreenSize.w5),
            decoration: BoxDecoration(
                // color: AppTheme.colors.white,
                borderRadius: BorderRadius.circular(ScreenSize.r25)),
            child: Text(
              "Statistika",
              style: AppTheme.data.textTheme.bodySmall!
                  .copyWith(fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ]),
    );
  }
}
