import 'package:crypto_app/core/utils/app_assets.dart';
import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCoinNews extends StatelessWidget {
  const CustomCoinNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: ListView(
        children: [
          const Text(
            'News',
            style: TextStyle(fontSize: 25),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  textAlign: TextAlign.justify,
                  style: AppTextStyle.text16,
                ),
              ),
              SizedBox(
                width: 90.w,
                child: CircleAvatar(
                  radius: 35.w,
                  backgroundImage: const AssetImage(AppAssets.photo),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
