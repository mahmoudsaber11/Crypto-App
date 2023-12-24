import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/features/home/presentation/cubit/coin_market_cubit.dart';
import 'package:crypto_app/features/home/presentation/cubit/coin_market_state.dart';
import 'package:crypto_app/features/home/presentation/widgets/custom_coin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCoinItemListView extends StatelessWidget {
  const CustomCoinItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoinCubit, CoinState>(builder: (context, state) {
      if (state is CoinLoading) {
        return const Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ),
        );
      } else if (state is CoinSuccess) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height * .36,
          child: ListView.builder(
              itemCount: state.coinMarket.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: CustomCoinItem(coinModel: state.coinMarket[index]),
                );
              }),
        );
      } else if (state is CoinError) {
        return Text("Error : ${state.error}");
      } else {
        return const Text('Initial State');
      }
    });
  }
}
