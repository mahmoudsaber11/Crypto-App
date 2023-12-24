import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewOfText extends StatelessWidget {
  const ListViewOfText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> text = ['D', 'W', 'M', '3M', '6M', 'Y'];

    List<bool> textBool = [false, false, true, false, false, false];
    return SizedBox(
      height: 22.h,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: text.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.sp),
                    color: textBool[index] == true
                        ? AppColors.primaryColor.withOpacity(0.3)
                        : Colors.transparent),
                child: Text(
                  text[index],
                  style: AppTextStyle.text16Bold,
                ),
              ),
            );
          }),
    );
  }
}
