import 'package:electric_control_iot/pages/graphicDiario_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';

import 'graphicMensual_page.dart';

class PrevGraphicPage extends StatefulWidget {
  final String lugar;
  final int position;
  PrevGraphicPage(this.lugar, this.position);
  @override
  _PrevGraphicPageState createState() => _PrevGraphicPageState(lugar, position);
}

User user = FirebaseAuth.instance.currentUser;
String email = user.email;
List<String> emailvector = email.split('@');
String userID = emailvector[0];

class _PrevGraphicPageState extends State<PrevGraphicPage> {
  final String lugarS;
  final int position;
  _PrevGraphicPageState(this.lugarS,this.position);

  bool sEstado;

  Map lugarJson;

  List lugares = [];

  StreamSubscription _subscriptionTodo;

  @override
  void dispose() {
    if (_subscriptionTodo != null) {
      _subscriptionTodo.cancel();
    }
    super.dispose();
  }

  @override
  void initState() {
    FirebaseTodos.getTodoStream("Dispositivos", _updateTodo)
        .then((StreamSubscription s) => _subscriptionTodo = s);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Consumo $lugarS'),
      ),
      body: FutureBuilder(
        future: getDevices(),
        builder: (context,snapshot){
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator(),);
          } else{
            Map lugarMap = lugarJson[lugares[position]];

            return Center(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 7.0),
                children: [
                  Card(
                    shadowColor: Colors.purple,
                    elevation: 10.0,
                    child: ListTile(
                      title: Text('Consumo Mensual',style: TextStyle(color: Colors.purple, fontSize: 21.0),),
                      onTap: () => _selYearConsumo(context, lugares[position], lugarMap),
                    ),
                  ),
                  Divider(height: 3.0,),
                  Card(
                    shadowColor: Colors.purple,
                    elevation: 10.0,
                    child: ListTile(
                      title: Text('Consumo Diario',style: TextStyle(color: Colors.purple, fontSize: 21.0),),
                      onTap: () => _selYear(context, lugares[position], lugarMap),
                    ),
                  ),
                ],
              )
                
              );
          }
        },
      ),
    );
  }

  _updateTodo(Todo value) {
    List lista = value.lista;
    Map mapa = value.mapa;
    setState((){
      // _todoName = name;
      lugares = lista;
      lugarJson = mapa;
    });
  }
}

void _selYear(BuildContext context, String lugar, Map lugarJson) async{
  await Navigator.push(context, MaterialPageRoute(builder: (context) => SelYearPage(lugar, lugarJson)));
}

void _selYearConsumo(BuildContext context, String lugar, Map lugarJson) async{
  await Navigator.push(context, MaterialPageRoute(builder: (context) => SelYearConsumoPage(lugar, lugarJson)));
}

class SelYearConsumoPage extends StatelessWidget {
  final String lugar;
  final Map lugarJson;
  SelYearConsumoPage(this.lugar, this.lugarJson);

  @override
  Widget build(BuildContext context) {
    Map selConsumo = lugarJson['Consumo'];
    Map selYearCon = selConsumo['Año'];
    List yearList = selYearCon.entries.map((entry) => "${entry.key}").toList();

    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Consumo Mensual $lugar"),
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 7.0),
          itemCount: yearList.length,
          itemBuilder: (context,position){
            return Card(
              shadowColor: Colors.purple,
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Divider(height: 7.0,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ListTile(
                          title: Text('${yearList[position]}',style: TextStyle(color: Colors.purple, fontSize: 21.0),),
                          onTap: () => _navigateToYearSelCon(context, yearList[position], selYearCon),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

void _navigateToYearSelCon(BuildContext context, String yearSel, Map selYearCon) async{
  await Navigator.push(context, MaterialPageRoute(builder: (context) => GraphicPageMensual(yearSel, selYearCon)));
}

class SelYearPage extends StatelessWidget {
  final String lugar;
  final Map lugarJson;
  SelYearPage(this.lugar, this.lugarJson);

  @override
  Widget build(BuildContext context) {
    Map selConsumo = lugarJson['Consumo'];
    Map selYearCon = selConsumo['Año'];
    List yearList = selYearCon.entries.map((entry) => "${entry.key}").toList();

    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Consumo Diario $lugar"),
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 7.0),
          itemCount: yearList.length,
          itemBuilder: (context,position){
            return Card(
              shadowColor: Colors.purple,
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Divider(height: 7.0,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ListTile(
                          title: Text('${yearList[position]}',style: TextStyle(color: Colors.purple, fontSize: 21.0),),
                          onTap: () => _navigateToYearSel(context, yearList[position], selYearCon, lugar),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

void _navigateToYearSel(BuildContext context, String yearSel, Map selYearCon, String lugar) async{
  await Navigator.push(context, MaterialPageRoute(builder: (context) => SelMesPage(yearSel, selYearCon, lugar)));
}

class SelMesPage extends StatefulWidget {
  final String yearSel;
  final String lugar;
  final Map selYearCon;
  SelMesPage(this.yearSel, this.selYearCon, this.lugar);

  @override
  _SelMesPageState createState() => _SelMesPageState();
}

class _SelMesPageState extends State<SelMesPage> {
  Map selMes = {};

  Map selMesCon = {};

  Map mapping = {};

  List mesList = [];

  List<int> numbers = [4,8,12,1,2,7,6,3,5,11,10,9];

  @override
  Widget build(BuildContext context) {
    selMes = widget.selYearCon[widget.yearSel];
    selMesCon = selMes['Mes'];
    mesList = selMesCon.entries.map((entry) => "${entry.key}").toList();
    mesList.sort((a, b) => a.toString().compareTo(b.toString()));

    final Map<int, String> mappings = {
    for (int i = 0; i < numbers.length; i++)
      numbers[i]: mesList[i]
  };

  numbers.sort();

  mesList = [
    for (int number in numbers) mappings[number]
  ];

  print(mesList); // [c, a, b]
  print(numbers); // [1, 2, 3]

    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: Text("Consumo Diario ${widget.lugar}"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 7.0),
        itemCount: mesList.length,
        itemBuilder: (context,position){
          return Card(
            shadowColor: Colors.purple,
            elevation: 10.0,
            child: Column(
              children: <Widget>[
                Divider(height: 7.0,),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text('${mesList[position]}',style: TextStyle(color: Colors.purple, fontSize: 21.0),),
                        onTap: () => _navigateToMesSel(context, mesList[position], selMesCon),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    ),
    );
  }
}

void _navigateToMesSel(BuildContext context, String mesSel, Map selMesCon) async{
  await Navigator.push(context, MaterialPageRoute(builder: (context) => GraphicPageDiario(mesSel, selMesCon)));
}

class Todo {
  final String key;
  String name;
  List lista;
  Map mapa;

  Todo.fromJson(this.key, Map map) {
    mapa = map;
    lista = map.entries.map((entry) => "${entry.key}").toList();

    if (name == null) {
      name = '';
    }
  }
}

class FirebaseTodos {
  static Future<StreamSubscription<Event>> getTodoStream(String todoKey, void onData(Todo todo)) async {
    
    StreamSubscription<Event> subscription = FirebaseDatabase.instance
      .reference()
      .child("USUARIOS")
      .child(userID)
      .child('Dispositivos').orderByValue()
      .onValue
      .listen((Event event) {
        
        Map map = event.snapshot.value;
        // List lista = map.entries.map((entry) => "${entry.key}").toList();
        // print('El tamaños de la lista es de ${lista.length}');
        // Map lugar = map[lista];
        // print(lugar['Lugar']);
        // print(lista);
        // print(map);

        var todo = new Todo.fromJson(event.snapshot.key, map);
        onData(todo);

      });
    return subscription;
  }
}

Future<StreamSubscription<Event>> getDevices() async{
  StreamSubscription<Event> devicesDB = FirebaseDatabase.instance
      .reference()
      .child("USUARIOS")
      .child(userID)
      .child('Dispositivos')
      .onValue
      .listen((Event event) {
        
        Map map = event.snapshot.value;
        Todo.fromJson(event.snapshot.key, map);
      });
      
  return devicesDB;
}