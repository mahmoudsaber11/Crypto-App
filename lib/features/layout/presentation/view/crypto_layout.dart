import 'package:crypto_app/core/utils/app_assets.dart';
import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:crypto_app/features/layout/presentation/cubit/layout_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CryptoLayout extends StatelessWidget {
  const CryptoLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<LayoutCubit>(context);
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: cubit.views()[cubit.currentIndex],
            bottomNavigationBar: bottomNavBar(cubit, context),
          ),
        );
      },
    );
  }

  BottomNavigationBar bottomNavBar(LayoutCubit cubit, BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: cubit.currentIndex,
      onTap: (value) {
        cubit.changeBottomNav(value, context);
      },
      items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.iconHomeOutlined,
              color: Colors.grey,
              height: 30.h,
            ),
            activeIcon: Image.asset(
              AppAssets.iconHome,
              height: 30.h,
              color: AppColors.primaryColor,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.iconCurrencyOutlined,
              color: Colors.grey,
              height: 30.h,
            ),
            activeIcon: Image.asset(
              AppAssets.iconCurrency,
              height: 30.h,
              color: AppColors.primaryColor,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.iconPersonOutlined,
              color: Colors.grey,
              height: 30.h,
            ),
            activeIcon: Image.asset(
              AppAssets.iconPerson,
              height: 30.h,
              color: AppColors.primaryColor,
            ),
            label: ""),
      ],
    );
  }
}
