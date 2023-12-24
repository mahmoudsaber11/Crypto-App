import 'package:crypto_app/core/utils/app_text_style.dart';
import 'package:crypto_app/core/widgets/details_price_coin.dart';
import 'package:crypto_app/features/home/data/models/coin_model.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/view/select_coin_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetailsCoinItem extends StatelessWidget {
  const CustomDetailsCoinItem({super.key, required this.coinModel});
  final CoinModel coinModel;
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SelectCoinView(coinModel: coinModel)),
          );
        },
        child: Card(
          color: Colors.white,
          elevation: 3,
          child: Container(
            padding: EdgeInsets.only(
              left: myWidth * 0.04.w,
              right: myWidth * 0.06.w,
              top: myHeight * 0.02.h,
            ),
            child: Padding(
              padding: EdgeInsets.all(6.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    coinModel.image,
                    height: myHeight * 0.045,
                  ),
                  SizedBox(
                    height: myHeight * 0.02,
                  ),
                  Text(
                    coinModel.id,
                    style: AppTextStyle.text16Bold,
                  ),
                  SizedBox(
                    height: myHeight * 0.01,
                  ),
                  DetailsPriceCoin(
                    coinModel: coinModel,
                    fontSize: 16.sp,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
