import 'package:crypto_app/core/widgets/custom_buttons_app.dart';
import 'package:crypto_app/features/home/data/models/coin_model.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/cubit/chart_cubit.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/widgets/custom_chart.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/widgets/custom_coin_news.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/widgets/list_view_of_text.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/widgets/select_coin_appbar.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/widgets/select_coin_details.dart';
import 'package:crypto_app/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectCoinView extends StatelessWidget {
  const SelectCoinView({super.key, required this.coinModel});
  final CoinModel coinModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          serviceLocator.get<ChartCubit>()..fetchChartData(coinModel.id),
      child: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: SelectCoinAppBar(coinModel: coinModel),
            ),
            Divider(
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                children: [
                  SelectCoinDetails(
                    coinModel: coinModel,
                    title: 'Low',
                    subTitle: '\$${coinModel.low24H}',
                  ),
                  const Spacer(),
                  SelectCoinDetails(
                    coinModel: coinModel,
                    title: 'High',
                    subTitle: '\$${coinModel.high24H}',
                  ),
                  const Spacer(),
                  SelectCoinDetails(
                    coinModel: coinModel,
                    title: 'Vol',
                    subTitle: '\$${coinModel.totalVolume}',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            const CustomChart(),
            SizedBox(
              height: 15.h,
            ),
            const ListViewOfText(),
            SizedBox(
              height: 20.h,
            ),
            const CustomCoinNews(),
            const CustomButtonsApp(),
          ],
        )),
      ),
    );
  }
}
