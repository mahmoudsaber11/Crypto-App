import 'package:crypto_app/features/select_coin.dart/data/models/chart_model.dart';
import 'package:crypto_app/features/select_coin.dart/data/repositories/chart_repo.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/cubit/chart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChartCubit extends Cubit<ChartState> {
  final ChartRepo chartRepo;
  ChartCubit({required this.chartRepo}) : super(const ChartInitial());

  Future fetchChartData(String coinId) async {
    emit(const ChartLoading());
    try {
      final List<ChartModel> chart = await chartRepo.getChart(coinId);
      emit(ChartSuccess(chartModel: chart));
    } catch (error) {
      emit(ChartError(error: error.toString()));
    }
  }
}
