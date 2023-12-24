import 'package:crypto_app/features/home/data/repositories/coin_repo.dart';
import 'package:crypto_app/features/home/presentation/cubit/coin_market_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinCubit extends Cubit<CoinState> {
  final CoinRepo coinRepo;

  CoinCubit({required this.coinRepo}) : super(const CoinInitial());

  Future fetchCoinData() async {
    emit(const CoinLoading());
    try {
      final coinMarket = await coinRepo.getCoinData();
      emit(CoinSuccess(coinMarket: coinMarket));
    } catch (error) {
      emit(CoinError(error: error.toString()));
    }
  }
}
