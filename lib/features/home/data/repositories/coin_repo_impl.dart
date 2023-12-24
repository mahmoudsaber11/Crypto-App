import 'package:crypto_app/core/api/end_point.dart';
import 'package:crypto_app/features/home/data/models/coin_model.dart';
import 'package:crypto_app/features/home/data/repositories/coin_repo.dart';
import 'package:dio/dio.dart';

class CoinRepoImpl implements CoinRepo {
  final Dio _dio = Dio();
  @override
  Future<List<CoinModel>> getCoinData() async {
    try {
      final response = await _dio.get(EndPoints.coin);

      if (response.statusCode == 200) {
        final List<dynamic> responseData = response.data;
        final List<CoinModel> coinModels = responseData
            .map((dynamic item) => CoinModel.fromJson(item))
            .toList();
        return coinModels;
      } else {
        throw Exception(
            'Failed to load coin data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to load coin data. Error: $error');
    }
  }
}
