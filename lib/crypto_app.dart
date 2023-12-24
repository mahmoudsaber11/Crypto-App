import 'package:crypto_app/config/routes/app_router.dart';
import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/features/home/presentation/cubit/coin_market_cubit.dart';
import 'package:crypto_app/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:crypto_app/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => serviceLocator.get<LayoutCubit>(),
          ),
          BlocProvider(
            create: (context) =>
                serviceLocator.get<CoinCubit>()..fetchCoinData(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: AppColors.backgroundColor,
            ),
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
