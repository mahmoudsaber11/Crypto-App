import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:crypto_app/features/home/data/models/coin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSparkLine extends StatelessWidget {
  const CustomSparkLine({
    super.key,
    required this.coinModel,
  });

  final CoinModel coinModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.05.h,
        child: Sparkline(
          data: coinModel.sparklineIn7D.price,
          lineWidth: 2.0,
          lineColor: coinModel.marketCapChangePercentage24H >= 0
              ? Colors.green
              : Colors.red,
          fillMode: FillMode.below,
          fillGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.0, 0.7],
              colors: coinModel.marketCapChangePercentage24H >= 0
                  ? [Colors.green, Colors.green.shade100]
                  : [Colors.red, Colors.red.shade100]),
        ),
      ),
    );
  }
}
