import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:crypto_app/features/home/data/models/coin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectCoinAppBar extends StatelessWidget {
  const SelectCoinAppBar({
    super.key,
    required this.coinModel,
  });

  final CoinModel coinModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          coinModel.image,
          height: 60.h,
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              coinModel.id,
              style: AppTextStyle.text16Bold,
            ),
            Text(
              coinModel.symbol,
              style: AppTextStyle.text16.copyWith(fontSize: 12.sp),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              '\$${coinModel.currentPrice}',
              style: AppTextStyle.text16Bold,
            ),
            Text(
              '${coinModel.marketCapChangePercentage24H.toStringAsFixed(3)}%',
              style: AppTextStyle.text16.copyWith(
                fontSize: 12.sp,
                color: coinModel.marketCapChangePercentage24H >= 0
                    ? Colors.green
                    : Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
