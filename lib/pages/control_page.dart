import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class ControlPage extends StatefulWidget {
  final String lugar;
  final int position;
  ControlPage(this.lugar, this.position);

  @override
  _ControlPageState createState() => _ControlPageState();
}

final userReference = FirebaseDatabase.instance.reference().child('USUARIOS');

User user = FirebaseAuth.instance.currentUser;
String email = user.email;
List<String> emailvector = email.split('@');
String userID = emailvector[0];

class _ControlPageState extends State<ControlPage> {

  StreamSubscription _subscriptionTodo;

  bool sEstado = false;
  
  String idDispisitivo;
  String estadoString;

  Map lugarJson;

  List lugares = [];

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
        title: Text('Control ${widget.lugar}'),
      ),
      body: FutureBuilder(
        future: getDevices(),
        builder: (context,snapshot){
          if( !snapshot.hasData ){
            return Center(child: CircularProgressIndicator());
          } else{
            int position = widget.position;
            Map lugarMap = lugarJson[lugares[position]];

            String estadoD = lugarMap['Estado'];
            var consumoD = lugarMap['Consumo'];
            // String lugarS = lugarMap['Lugar'];

            if(estadoD == 'true'){
              sEstado = true;
            } else if(estadoD == 'false'){
              sEstado = false;
            }
            return Center(
              child: SwitchListTile(
                activeColor: Colors.purple,
                title: Text(
                  widget.lugar, 
                  style: TextStyle(
                    fontFamily: 'tepeno',
                    fontSize: 24.0,
                    color: Colors.purple,
                  ),
                ),
                value: sEstado, 
                onChanged: (_va){
                  setState(() {
                    sEstado = _va;
                    
                    estadoString = sEstado.toString();
                    idDispisitivo = widget.lugar;
                    userReference.child(userID).child('Dispositivos').child(idDispisitivo).set({
                      'Lugar'   : idDispisitivo,
                      'Estado'  : estadoString,
                      'Consumo' : consumoD,
                    });
                  });
                },    
              ),
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

Future<StreamSubscription<Event>> getDevices() async{
  StreamSubscription<Event> devicesDB = FirebaseDatabase.instance.reference().child("USUARIOS")
      .child(userID)
      .child('Dispositivos')
      .onValue
      .listen((Event event) {
        
        Map map = event.snapshot.value;
        Todo.fromJson(event.snapshot.key, map);
      });
      return devicesDB;
}

class FirebaseTodos {
  static Future<StreamSubscription<Event>> getTodoStream(String todoKey, void onData(Todo todo)) async {
    
    StreamSubscription<Event> subscription = FirebaseDatabase.instance
      .reference()
      .child("USUARIOS")
      .child(userID)
      .child('Dispositivos')
      .onValue
      .listen((Event event) {
        
        Map map = event.snapshot.value;
        var todo = new Todo.fromJson(event.snapshot.key, map);
        onData(todo);

      });
    
    return subscription;
  }
}