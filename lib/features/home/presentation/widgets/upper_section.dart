import 'package:crypto_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: 30.w, left: 30.w, top: 20.h, bottom: 20.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5.r)),
                child: const Text(
                  "Main Portfolio",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                width: 37.w,
              ),
              const Text(
                "Top 10 coins",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                width: 37.w,
              ),
              const Text(
                "Exprimental",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Text(
                "\$ 7,466.20",
                style: TextStyle(fontSize: 25.sp),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.all(5.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.5)),
                child: Image.asset(
                  AppAssets.icon,
                  height: 25.h,
                ),
              )
            ],
          ),
          const Align(
              alignment: Alignment.topLeft, child: Text("+162% all time")),
        ],
      ),
    );
  }
}
