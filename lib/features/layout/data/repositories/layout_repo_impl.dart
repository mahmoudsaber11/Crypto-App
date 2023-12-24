import 'package:crypto_app/features/Ethereum/presentation/view/ethereum_view.dart';
import 'package:crypto_app/features/home/presentation/view/home_view.dart';
import 'package:crypto_app/features/layout/data/repositories/layout_repo.dart';
import 'package:crypto_app/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:crypto_app/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutRepoImpl implements LayoutRepo {
  @override
  void changeBottomNav({required int index, required context}) {
    BlocProvider.of<LayoutCubit>(context).currentIndex = index;
  }

  @override
  List<Widget> views() {
    return [const HomeView(), const EthereumView(), const ProfileView()];
  }
}
