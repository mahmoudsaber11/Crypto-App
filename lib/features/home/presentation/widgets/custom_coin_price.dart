import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:crypto_app/core/widgets/details_price_coin.dart';
import 'package:crypto_app/features/home/data/models/coin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCoinPrice extends StatelessWidget {
  const CustomCoinPrice({
    super.key,
    required this.coinModel,
  });

  final CoinModel coinModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$ ${coinModel.currentPrice}',
            style: AppTextStyle.text16Bold,
          ),
          DetailsPriceCoin(
            coinModel: coinModel,
            fontSize: 12.sp,
          ),
        ],
      ),
    );
  }
}
