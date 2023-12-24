import 'package:crypto_app/features/select_coin.dart/data/models/chart_model.dart';

abstract class ChartRepo {
  Future<List<ChartModel>> getChart(String coinId);
}
