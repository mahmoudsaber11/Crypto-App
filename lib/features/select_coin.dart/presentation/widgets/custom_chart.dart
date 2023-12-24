import 'package:crypto_app/core/utils/app_colors.dart';
import 'package:crypto_app/features/select_coin.dart/data/models/chart_model.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/cubit/chart_cubit.dart';
import 'package:crypto_app/features/select_coin.dart/presentation/cubit/chart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomChart extends StatelessWidget {
  const CustomChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChartCubit, ChartState>(builder: (context, state) {
      if (state is ChartLoading) {
        return const Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ),
        );
      } else if (state is ChartSuccess) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.4.h,
          child: SfCartesianChart(
            trackballBehavior: TrackballBehavior(
                enable: true, activationMode: ActivationMode.singleTap),
            zoomPanBehavior:
                ZoomPanBehavior(enablePanning: true, zoomMode: ZoomMode.x),
            series: <CandleSeries>[
              CandleSeries<ChartModel, int>(
                enableSolidCandles: true,
                enableTooltip: true,
                bullColor: Colors.green,
                bearColor: Colors.red,
                dataSource: state.chartModel,
                xValueMapper: (ChartModel sales, _) => sales.time,
                lowValueMapper: (ChartModel sales, _) => sales.low,
                highValueMapper: (ChartModel sales, _) => sales.high,
                openValueMapper: (ChartModel sales, _) => sales.open,
                closeValueMapper: (ChartModel sales, _) => sales.close,
                animationDuration: 55,
              )
            ],
          ),
        );
      } else if (state is ChartError) {
        return Text("Error : ${state.error}");
      } else {
        return const Text('Initial State');
      }
    });
  }
}
