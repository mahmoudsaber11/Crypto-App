import 'package:crypto_app/config/routes/routes.dart';
import 'package:crypto_app/core/utils/app_assets.dart';
import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/core/utils/app_navigator.dart';
import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(AppAssets.bitCoin),
        Column(
          children: [
            Text(
              "The Future",
              style: AppTextStyle.text40,
            ),
            Text(
              "Learn more about cryptocurrency, look to",
              style: AppTextStyle.text16,
            ),
            Text(
              "the future in IO Crypto",
              style: AppTextStyle.text16,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(AppColors.primaryColor)),
              onPressed: () {
                context.navigateTo(routeName: Routes.cryptoLayoutViewRoute);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CREATE PORTFOLITO  ",
                    style: TextStyle(color: Colors.black),
                  ),
                  RotationTransition(
                      turns: AlwaysStoppedAnimation(310 / 360),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.black,
                      ))
                ],
              )),
        ),
      ],
    );
  }
}
