import 'package:crypto_app/core/utils/app_assets.dart';
import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonsApp extends StatelessWidget {
  const CustomButtonsApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.primaryColor)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 20.w,
                    ),
                    Text(
                      'Add to portfolio',
                      style: AppTextStyle.text16Bold,
                    ),
                  ],
                )),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.2)),
              child: Image.asset(
                AppAssets.iconNotificationOutlined,
                height: 25.h,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
