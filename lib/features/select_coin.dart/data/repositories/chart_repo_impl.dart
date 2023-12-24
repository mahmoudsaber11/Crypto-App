import 'package:crypto_app/features/select_coin.dart/data/models/chart_model.dart';
import 'package:crypto_app/features/select_coin.dart/data/repositories/chart_repo.dart';
import 'package:dio/dio.dart';

class ChartRepoImpl implements ChartRepo {
  final Dio _dio = Dio();

  @override
  Future<List<ChartModel>> getChart(String coinId) async {
    try {
      final response = await _dio.get(
          'https://api.coingecko.com/api/v3/coins/$coinId/ohlc?vs_currency=usd&days=1');

      if (response.statusCode == 200) {
        final List<dynamic> responseData = response.data;
        final List<ChartModel> chartModels = responseData
            .map((dynamic item) => ChartModel.fromJson(item))
            .toList();
        return chartModels;
      } else {
        throw Exception(
            'Failed to load coin data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to load coin data. Error: $error');
    }
  }
}
