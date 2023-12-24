import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:crypto_app/features/home/data/models/coin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsPriceCoin extends StatelessWidget {
  const DetailsPriceCoin({
    super.key,
    required this.coinModel,
    required this.fontSize,
  });

  final CoinModel coinModel;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$${coinModel.priceChange24H.toStringAsFixed(2)}',
          style: AppTextStyle.text16.copyWith(fontSize: fontSize),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          '${coinModel.marketCapChangePercentage24H.toStringAsFixed(1)}%',
          style: AppTextStyle.text16.copyWith(
            fontSize: fontSize,
            color: coinModel.marketCapChangePercentage24H >= 0
                ? Colors.green
                : Colors.red,
          ),
        ),
      ],
    );
  }
}
