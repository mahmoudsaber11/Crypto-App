import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:crypto_app/features/home/data/models/coin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectCoinDetails extends StatelessWidget {
  const SelectCoinDetails({
    super.key,
    required this.coinModel,
    required this.title,
    required this.subTitle,
  });

  final CoinModel coinModel;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyle.text16,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          subTitle,
          style: AppTextStyle.text14,
        ),
      ],
    );
  }
}
