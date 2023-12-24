import 'package:crypto_app/features/select_coin.dart/data/models/chart_model.dart';
import 'package:equatable/equatable.dart';

abstract class ChartState extends Equatable {
  const ChartState();

  @override
  List<Object> get props => [];
}

class ChartInitial extends ChartState {
  const ChartInitial();
}

class ChartLoading extends ChartState {
  const ChartLoading();
}

class ChartSuccess extends ChartState {
  final List<ChartModel> chartModel;

  const ChartSuccess({required this.chartModel});

  @override
  List<Object> get props => [chartModel];
}

class ChartError extends ChartState {
  final String error;

  const ChartError({required this.error});

  @override
  List<Object> get props => [error];
}
