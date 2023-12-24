import 'dart:async';

import 'package:crypto_app/config/routes/routes.dart';
import 'package:crypto_app/core/utils/app_assets.dart';
import 'package:crypto_app/core/utils/app_navigator.dart';
import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IoCryptoViewBody extends StatefulWidget {
  const IoCryptoViewBody({super.key});

  @override
  State<IoCryptoViewBody> createState() => _IoCryptoViewBodyState();
}

class _IoCryptoViewBodyState extends State<IoCryptoViewBody> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 4),
      () {
        context.navigateAndRemoveUntil(newRoute: Routes.splashViewRoute);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Text('IO Crypto', style: AppTextStyle.text40),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Creat by',
              style: AppTextStyle.text16Bold,
            ),
            SizedBox(
              width: 10.w,
            ),
            Image.asset(
              AppAssets.io,
              height: 25.h,
              color: Colors.black,
            )
          ],
        ),
        Image.asset(
          AppAssets.loading,
          height: 20.h,
          color: Colors.black,
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
