import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class ConsumoSeries{
  final String yearMesX;
  final double consumoY;
  final charts.Color barColor;

  ConsumoSeries({
    @required this.yearMesX,
    @required this.consumoY,
    @required this.barColor,
  });
}