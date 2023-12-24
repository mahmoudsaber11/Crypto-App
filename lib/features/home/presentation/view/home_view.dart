import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/features/home/presentation/widgets/custom_card.dart';

import 'package:crypto_app/features/home/presentation/widgets/upper_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 253, 225, 112),
              AppColors.primaryColor
            ])),
        child: const Column(
          children: [UpperSection(), CustomCard()],
        ),
      ),
    );
  }
}
