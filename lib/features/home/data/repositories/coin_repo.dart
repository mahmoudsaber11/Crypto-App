import 'package:crypto_app/features/home/data/models/coin_model.dart';

abstract class CoinRepo {
  Future<List<CoinModel>> getCoinData();
}
