import 'package:electric_control_iot/models/consumoSeries.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GraphicPageMensual extends StatefulWidget {
  final String yearSel;
  final Map selYearCon;
  GraphicPageMensual(this.yearSel, this.selYearCon);
  @override
  _GraphicPageMensualState createState() => _GraphicPageMensualState(yearSel, selYearCon);
}

class _GraphicPageMensualState extends State<GraphicPageMensual> {
  final String yearSel;
  final Map selYearCon;
  _GraphicPageMensualState(this.yearSel,this.selYearCon);

  List<double> conEnero = [];
  List<double> conFebrero = [];
  List<double> conMarzo = [];
  List<double> conAbril = [];
  List<double> conMayo = [];
  List<double> conJunio = [];
  List<double> conJulio = [];
  List<double> conAgosto = [];
  List<double> conSeptiembre = [];
  List<double> conOctubre = [];
  List<double> conNoviembre = [];
  List<double> conDiciembre = [];

  double conEne = 0.0;
  double conFeb = 0.0;
  double conMar = 0.0;
  double conAbr = 0.0;
  double conMay = 0.0;
  double conJun = 0.0;
  double conJul = 0.0;
  double conAgo = 0.0;
  double conSep = 0.0;
  double conOct = 0.0;
  double conNov = 0.0;
  double conDic = 0.0;

  @override
  Widget build(BuildContext context) {

    Map yearSelMap1 = selYearCon[yearSel];
    Map yearSelMap = yearSelMap1['Mes'];

    conEnero = yearSelMap['Enero'].toString().substring(1,yearSelMap['Enero'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conFebrero = yearSelMap['Febrero'].toString().substring(1,yearSelMap['Febrero'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conMarzo = yearSelMap['Marzo'].toString().substring(1,yearSelMap['Marzo'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conAbril = yearSelMap['Abril'].toString().substring(1,yearSelMap['Abril'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conMayo = yearSelMap['Mayo'].toString().substring(1,yearSelMap['Mayo'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conJunio = yearSelMap['Junio'].toString().substring(1,yearSelMap['Junio'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conJulio = yearSelMap['Julio'].toString().substring(1,yearSelMap['Julio'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conAgosto = yearSelMap['Agosto'].toString().substring(1,yearSelMap['Agosto'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conSeptiembre = yearSelMap['Septiembre'].toString().substring(1,yearSelMap['Septiembre'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conOctubre = yearSelMap['Octubre'].toString().substring(1,yearSelMap['Octubre'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conNoviembre = yearSelMap['Noviembre'].toString().substring(1,yearSelMap['Noviembre'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();
    conDiciembre = yearSelMap['Diciembre'].toString().substring(1,yearSelMap['Diciembre'].toString().length-1).split(',').map((e)=>double.parse(e)).toList();

    

    for(int i=0;i<conEnero.length;i++){
      conEne += conEnero[i];
    }

    for(int i=0;i<conFebrero.length;i++){
      conFeb += conFebrero[i];
    }

    for(int i=0;i<conMarzo.length;i++){
      conMar += conMarzo[i];
    }

    for(int i=0;i<conAbril.length;i++){
      conAbr += conAbril[i];
    }

    for(int i=0;i<conMayo.length;i++){
      conMay += conMayo[i];
    }

    for(int i=0;i<conJunio.length;i++){
      conJun += conJunio[i];
    }

    for(int i=0;i<conJulio.length;i++){
      conJul += conJulio[i];
    }

    for(int i=0;i<conAgosto.length;i++){
      conAgo += conAgosto[i];
    }

    for(int i=0;i<conSeptiembre.length;i++){
      conSep += conSeptiembre[i];
    }

    for(int i=0;i<conOctubre.length;i++){
      conOct += conOctubre[i];
    }

    for(int i=0;i<conNoviembre.length;i++){
      conNov += conNoviembre[i];
    }

    for(int i=0;i<conDiciembre.length;i++){
      conDic += conDiciembre[i];
    }
  
    final List<ConsumoSeries> data =[
      ConsumoSeries(
        yearMesX: "Ene",
        consumoY: conEne,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "Feb",
        consumoY: conFeb,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "Mar",
        consumoY: conMar,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "Abr",
        consumoY: conAbr,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "May",
        consumoY: conMay,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "Jun",
        consumoY: conJun,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "Jul",
        consumoY: conJul,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "Ago",
        consumoY: conAgo,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "Sep",
        consumoY: conSep,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "Oct",
        consumoY: conOct,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "Nov",
        consumoY: conNov,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      ConsumoSeries(
        yearMesX: "Dic",
        consumoY: conDic,
        barColor: charts.ColorUtil.fromDartColor(Colors.purple),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Consumo $yearSel'),
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
            //Text("kWh",style: TextStyle(fontSize: 15.0),),
          ],
        ),
      ),
    );
  }
}