import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/features/home/presentation/cubit/coin_market_cubit.dart';
import 'package:crypto_app/features/home/presentation/cubit/coin_market_state.dart';
import 'package:crypto_app/features/home/presentation/widgets/custom_details_coin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetailsCoinListView extends StatelessWidget {
  const CustomDetailsCoinListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoinCubit, CoinState>(
      builder: (context, state) {
        if (state is CoinLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        } else if (state is CoinSuccess) {
          return Expanded(
              child: Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.coinMarket.length,
                itemBuilder: (context, index) {
                  return CustomDetailsCoinItem(
                    coinModel: state.coinMarket[index],
                  );
                }),
          ));
        } else if (state is CoinError) {
          return Text("Error : ${state.error}");
        } else {
          return const Text('Initial State');
        }
      },
    );
  }
}
