class ChartModel {
  final int time;
  final double open;
  final double high;
  final double low;
  final double close;

  ChartModel(
      {required this.time,
      required this.open,
      required this.high,
      required this.low,
      required this.close});
  factory ChartModel.fromJson(List json) {
    return ChartModel(
      time: json[0],
      open: json[1],
      high: json[2],
      low: json[3],
      close: json[4],
    );
  }
}
