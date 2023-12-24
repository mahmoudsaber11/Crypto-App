import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:crypto_app/features/home/data/models/coin_model.dart';
import 'package:crypto_app/features/home/presentation/widgets/custom_coin_price.dart';
import 'package:crypto_app/features/home/presentation/widgets/custom_spark_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCoinItem extends StatelessWidget {
  const CustomCoinItem({super.key, required this.coinModel});
  final CoinModel coinModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
      ),
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
          child: Row(
            children: [
              Expanded(
                // flex: 0,
                child: Image.network(
                  coinModel.image,
                  height: 50.h,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Expanded(
                // flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coinModel.id,
                      style: AppTextStyle.text14,
                    ),
                    Text(
                      '0.4 ${coinModel.symbol}',
                      style: AppTextStyle.text16.copyWith(fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              CustomSparkLine(coinModel: coinModel),
              SizedBox(
                width: 15.w,
              ),
              CustomCoinPrice(coinModel: coinModel),
            ],
          ),
        ),
      ),
    );
  }
}
