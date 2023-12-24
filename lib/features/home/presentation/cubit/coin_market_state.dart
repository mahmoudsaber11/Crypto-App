import 'package:crypto_app/features/home/data/models/coin_model.dart';
import 'package:equatable/equatable.dart';

abstract class CoinState extends Equatable {
  const CoinState();

  @override
  List<Object> get props => [];
}

class CoinInitial extends CoinState {
  const CoinInitial();
}

class CoinLoading extends CoinState {
  const CoinLoading();
}

class CoinSuccess extends CoinState {
  final List<CoinModel> coinMarket;

  const CoinSuccess({required this.coinMarket});

  @override
  List<Object> get props => [coinMarket];
}

class CoinError extends CoinState {
  final String error;

  const CoinError({required this.error});

  @override
  List<Object> get props => [error];
}
