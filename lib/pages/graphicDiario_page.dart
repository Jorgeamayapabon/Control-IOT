import 'package:electric_control_iot/models/consumoSeries.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GraphicPageDiario extends StatefulWidget {
  final String mesSel;
  final Map selMesCon;
  GraphicPageDiario(this.mesSel, this.selMesCon);
  @override
  _GraphicPageDiarioState createState() => _GraphicPageDiarioState(mesSel, selMesCon);
}

class _GraphicPageDiarioState extends State<GraphicPageDiario> {
  final String mesSel;
  final Map selMesCon;
  _GraphicPageDiarioState(this.mesSel,this.selMesCon);

  List<ConsumoSeries> data = [];

  @override
  Widget build(BuildContext context) {

    List mesSelMap = selMesCon[mesSel];
    List<String> consumoList = mesSelMap.toString().substring(1,mesSelMap.toString().length-1).split(',');
    print(consumoList.length);
    print(consumoList[0]);

    if(consumoList.length == 28){
      data =[
        ConsumoSeries(
          yearMesX: "1",
          consumoY: double.parse(consumoList[0]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "2",
          consumoY: double.parse(consumoList[1]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "3",
          consumoY: double.parse(consumoList[2]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "4",
          consumoY: double.parse(consumoList[3]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "5",
          consumoY: double.parse(consumoList[4]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "6",
          consumoY: double.parse(consumoList[5]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "7",
          consumoY: double.parse(consumoList[6]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "8",
          consumoY: double.parse(consumoList[7]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "9",
          consumoY: double.parse(consumoList[8]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "10",
          consumoY: double.parse(consumoList[9]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "11",
          consumoY: double.parse(consumoList[10]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "12",
          consumoY: double.parse(consumoList[11]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "13",
          consumoY: double.parse(consumoList[12]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "14",
          consumoY: double.parse(consumoList[13]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "15",
          consumoY: double.parse(consumoList[14]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "16",
          consumoY: double.parse(consumoList[15]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "17",
          consumoY: double.parse(consumoList[16]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "18",
          consumoY: double.parse(consumoList[17]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "19",
          consumoY: double.parse(consumoList[18]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "20",
          consumoY: double.parse(consumoList[19]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "21",
          consumoY: double.parse(consumoList[20]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "22",
          consumoY: double.parse(consumoList[21]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "23",
          consumoY: double.parse(consumoList[22]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "24",
          consumoY: double.parse(consumoList[23]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "25",
          consumoY: double.parse(consumoList[24]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "26",
          consumoY: double.parse(consumoList[25]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "27",
          consumoY: double.parse(consumoList[26]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "28",
          consumoY: double.parse(consumoList[27]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
      ];
    }

    if(consumoList.length == 29){
      data =[
        ConsumoSeries(
          yearMesX: "1",
          consumoY: double.parse(consumoList[0]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "2",
          consumoY: double.parse(consumoList[1]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "3",
          consumoY: double.parse(consumoList[2]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "4",
          consumoY: double.parse(consumoList[3]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "5",
          consumoY: double.parse(consumoList[4]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "6",
          consumoY: double.parse(consumoList[5]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "7",
          consumoY: double.parse(consumoList[6]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "8",
          consumoY: double.parse(consumoList[7]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "9",
          consumoY: double.parse(consumoList[8]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "10",
          consumoY: double.parse(consumoList[9]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "11",
          consumoY: double.parse(consumoList[10]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "12",
          consumoY: double.parse(consumoList[11]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "13",
          consumoY: double.parse(consumoList[12]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "14",
          consumoY: double.parse(consumoList[13]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "15",
          consumoY: double.parse(consumoList[14]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "16",
          consumoY: double.parse(consumoList[15]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "17",
          consumoY: double.parse(consumoList[16]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "18",
          consumoY: double.parse(consumoList[17]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "19",
          consumoY: double.parse(consumoList[18]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "20",
          consumoY: double.parse(consumoList[19]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "21",
          consumoY: double.parse(consumoList[20]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "22",
          consumoY: double.parse(consumoList[21]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "23",
          consumoY: double.parse(consumoList[22]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "24",
          consumoY: double.parse(consumoList[23]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "25",
          consumoY: double.parse(consumoList[24]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "26",
          consumoY: double.parse(consumoList[25]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "27",
          consumoY: double.parse(consumoList[26]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "28",
          consumoY: double.parse(consumoList[27]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "29",
          consumoY: double.parse(consumoList[28]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
      ];
    }

    if(consumoList.length == 30){
      data =[
        ConsumoSeries(
          yearMesX: "1",
          consumoY: double.parse(consumoList[0]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "2",
          consumoY: double.parse(consumoList[1]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "3",
          consumoY: double.parse(consumoList[2]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "4",
          consumoY: double.parse(consumoList[3]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "5",
          consumoY: double.parse(consumoList[4]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "6",
          consumoY: double.parse(consumoList[5]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "7",
          consumoY: double.parse(consumoList[6]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "8",
          consumoY: double.parse(consumoList[7]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "9",
          consumoY: double.parse(consumoList[8]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "10",
          consumoY: double.parse(consumoList[9]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "11",
          consumoY: double.parse(consumoList[10]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "12",
          consumoY: double.parse(consumoList[11]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "13",
          consumoY: double.parse(consumoList[12]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "14",
          consumoY: double.parse(consumoList[13]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "15",
          consumoY: double.parse(consumoList[14]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "16",
          consumoY: double.parse(consumoList[15]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "17",
          consumoY: double.parse(consumoList[16]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "18",
          consumoY: double.parse(consumoList[17]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "19",
          consumoY: double.parse(consumoList[18]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "20",
          consumoY: double.parse(consumoList[19]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "21",
          consumoY: double.parse(consumoList[20]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "22",
          consumoY: double.parse(consumoList[21]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "23",
          consumoY: double.parse(consumoList[22]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "24",
          consumoY: double.parse(consumoList[23]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "25",
          consumoY: double.parse(consumoList[24]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "26",
          consumoY: double.parse(consumoList[25]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "27",
          consumoY: double.parse(consumoList[26]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "28",
          consumoY: double.parse(consumoList[27]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "29",
          consumoY: double.parse(consumoList[28]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "30",
          consumoY: double.parse(consumoList[29]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
      ];
    }

    if(consumoList.length == 31){
      data =[
        ConsumoSeries(
          yearMesX: "1",
          consumoY: double.parse(consumoList[0]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "2",
          consumoY: double.parse(consumoList[1]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "3",
          consumoY: double.parse(consumoList[2]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "4",
          consumoY: double.parse(consumoList[3]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "5",
          consumoY: double.parse(consumoList[4]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "6",
          consumoY: double.parse(consumoList[5]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "7",
          consumoY: double.parse(consumoList[6]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "8",
          consumoY: double.parse(consumoList[7]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "9",
          consumoY: double.parse(consumoList[8]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "10",
          consumoY: double.parse(consumoList[9]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "11",
          consumoY: double.parse(consumoList[10]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "12",
          consumoY: double.parse(consumoList[11]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "13",
          consumoY: double.parse(consumoList[12]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "14",
          consumoY: double.parse(consumoList[13]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "15",
          consumoY: double.parse(consumoList[14]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "16",
          consumoY: double.parse(consumoList[15]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "17",
          consumoY: double.parse(consumoList[16]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "18",
          consumoY: double.parse(consumoList[17]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "19",
          consumoY: double.parse(consumoList[18]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "20",
          consumoY: double.parse(consumoList[19]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "21",
          consumoY: double.parse(consumoList[20]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "22",
          consumoY: double.parse(consumoList[21]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "23",
          consumoY: double.parse(consumoList[22]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "24",
          consumoY: double.parse(consumoList[23]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "25",
          consumoY: double.parse(consumoList[24]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "26",
          consumoY: double.parse(consumoList[25]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "27",
          consumoY: double.parse(consumoList[26]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "28",
          consumoY: double.parse(consumoList[27]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "29",
          consumoY: double.parse(consumoList[28]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "30",
          consumoY: double.parse(consumoList[29]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
        ConsumoSeries(
          yearMesX: "31",
          consumoY: double.parse(consumoList[30]),
          barColor: charts.ColorUtil.fromDartColor(Colors.purple),
        ),
      ];
    }  
    
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Consumo $mesSel'),
      ),
      body: Center(
        child: ConsumoChart(
          data: data,
        ),
      ),
    );
  }
}

class ConsumoChart extends StatelessWidget {
  final List<ConsumoSeries> data;
  ConsumoChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ConsumoSeries, String>> series =[
      charts.Series(
        id: "Wh",
        data: data,
        domainFn: (ConsumoSeries series, _) => series.yearMesX,
        measureFn: (ConsumoSeries series, _) => series.consumoY,
        colorFn: (ConsumoSeries series, _) => series.barColor,
        labelAccessorFn: (ConsumoSeries series, _) => (series.consumoY == 0) ? '' : '${series.consumoY} Wh',
      )
    ];
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        shadowColor: Colors.purple,
        elevation: 10.0,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Text("     "),
                  Expanded(
                    child: charts.BarChart(
                      series,
                      animate: true,
                      vertical: false,
                      barRendererDecorator: charts.BarLabelDecorator<String>(),
                    ),
                  ),
                ],
              ),
            ),
            //Text("Wh",style: TextStyle(fontSize: 15.0),),
          ],
        ),
      ),
    );
  }
}