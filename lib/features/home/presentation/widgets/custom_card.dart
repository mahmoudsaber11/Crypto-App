import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:crypto_app/features/home/presentation/widgets/custom_coin_item_list_view.dart';
import 'package:crypto_app/features/home/presentation/widgets/custom_details_coin_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: _boxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: const Row(
                children: [
                  Text(
                    "Assets",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(Icons.add)
                ],
              ),
            ),
            const CustomCoinItemListView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
              child: Text(
                "Recommend to Buy",
                style: AppTextStyle.text16Bold,
              ),
            ),
            const CustomDetailsCoinListView(),
            SizedBox(
              height: 7.h,
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              color: Colors.grey.shade300,
              spreadRadius: 3,
              offset: const Offset(0, 3))
        ],
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        ));
  }
}
