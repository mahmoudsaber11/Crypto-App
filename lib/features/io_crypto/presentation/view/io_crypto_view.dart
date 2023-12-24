import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/features/io_crypto/presentation/widgets/io_crypto_view_body.dart';
import 'package:flutter/material.dart';

class IoCryptoView extends StatelessWidget {
  const IoCryptoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: IoCryptoViewBody(),
      ),
    );
  }
}
