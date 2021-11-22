import 'package:electric_control_iot/pages/loginScreen.dart';
import 'package:electric_control_iot/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'option_page.dart';

class DevicesPage extends StatefulWidget {
  @override
  _DevicesPageState createState() => _DevicesPageState();
}

final userReference = FirebaseDatabase.instance.reference().child('USUARIOS');

User user = FirebaseAuth.instance.currentUser;
String email = user.email;
List<String> emailvector = email.split('@');
String userID = emailvector[0];

class _DevicesPageState extends State<DevicesPage> {
  
  StreamSubscription _subscriptionTodo;

  String idDispisitivo;
  String lugarDevice;

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Control IOT',
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        appBar: AppBar(
          title: Text('DISPOSITIVOS', style: TextStyle(color: Colors.purple[50])),
          backgroundColor: Colors.purple,
          actions: [
            CircleAvatar(
              backgroundColor: Colors.white,
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage(user.photoURL),
              radius: 25.0,
            ),
            SizedBox(width: 10.0),
            IconButton(
              icon: Icon(Icons.logout), 
              iconSize: 30.0,
              color: Colors.purple[50],
              onPressed: () => {
                AuthService().googleSignOut(),
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginScreen())),
              },
            ),
            SizedBox(width: 5.0),
          ],
        ),
        body: FutureBuilder(
          future: getDevices(),
          builder: (context,snapshot){
            if(!snapshot.hasData){
              return Center(child: CircularProgressIndicator());
            } else{
              return Center(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 7.0),
                  itemCount: lugares.length,
                  itemBuilder: (context, position){
                    
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
                                  title: Text('${lugares[position]}',style: TextStyle(color: Colors.purple, fontSize: 21.0),),
                                  onTap: () => _navigateToDevicesOption(context, lugares[position], position),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color: Colors.red), 
                                onPressed: () => _showDialog(context, position),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.add, color: Colors.white,),
          onPressed: () => _createNewDevice(context),
        ),
      ),
    );
  }

  // void _onDeviceAdded(Event event){
  //   setState(() {w
  //     lugar.add(Dispositivo.fromSnapShot(event.snapshot));
  //   });
  // }

  

  void _navigateToDevicesOption(BuildContext context, String lugar, int position)async{

    await Navigator.push(context, MaterialPageRoute(builder: (context) => DeviceOption(lugar, position)));
  
  }

  void _showDialog(context, position) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alerta'),
          content: Text('¿Deseas eliminar este dispositivo?'),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.purple,
                ),
                onPressed: () =>
                  _deleteDevice(context, position, lugares),                                        
                    ),                   
            new TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _deleteDevice(BuildContext context, int position, List lugar) async{
    await userReference.child(userID).child('Dispositivos').child(lugar[position]).remove().then((_) {
      setState(() {
        lugar.removeAt(position);
        Navigator.of(context).pop();
      });
    });
  }
  String hui = '';
  var consumo = 
  {
    "Año":
    {
      "2021":
      {
        "Mes":
        {
          "Enero":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
            "30":"0.0",
          },
          "Febrero":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
          },
          "Marzo":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
            "30":"0.0",
          },
          "Abril":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
          },
          "Mayo":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
            "30":"0.0",
          },
          "Junio":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
          },
          "Julio":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
            "30":"0.0",
          },
          "Agosto":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
            "30":"0.0",
          },
          "Septiembre":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
          },
          "Octubre":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
            "30":"0.0",
          },
          "Noviembre":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
          },
          "Diciembre":
          {
            "0":"0.0",
            "1":"0.0",
            "2":"0.0",
            "3":"0.0",
            "4":"0.0",
            "5":"0.0",
            "6":"0.0",
            "7":"0.0",
            "8":"0.0",
            "9":"0.0",
            "10":"0.0",
            "11":"0.0",
            "12":"0.0",
            "13":"0.0",
            "14":"0.0",
            "15":"0.0",
            "16":"0.0",
            "17":"0.0",
            "18":"0.0",
            "19":"0.0",
            "20":"0.0",
            "21":"0.0",
            "22":"0.0",
            "23":"0.0",
            "24":"0.0",
            "25":"0.0",
            "26":"0.0",
            "27":"0.0",
            "28":"0.0",
            "29":"0.0",
            "30":"0.0",
          },
        },
      },
    },
  };

  void _createNewDevice(BuildContext context) async{
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text("Agregar"),
          content: Form(
            key: formkey,
            autovalidateMode: AutovalidateMode.always,
            child: _crearCategoria(),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Cancelar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                textStyle: TextStyle(color: Colors.white)
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            ElevatedButton(
              child: Text("Agregar"),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                textStyle: TextStyle(color: Colors.white)
              ),
              onPressed: () {
                if (formkey.currentState.validate()) {
                  // final String email = user.email;
                  formkey.currentState.save();
                  //firebase data abajo
                  userReference.child(userID).child('Dispositivos').child(idDispisitivo).set({
                    'Lugar' : lugarDevice,
                    'Estado': 'false',
                    'Consumo': consumo,
                  });
                  
                  Navigator.pop(context);
                }
              },
            ),
          ],
        );
      },
    );
  }

  Widget _crearCategoria() {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        labelText: 'Agregar Dispositivo',
        hintText: 'Sala, Cocina, Habitacion, Baño',
      ),
      validator: (_val) {
        if (_val.isEmpty) {
          return "No Puede Estar Vacio";
        } else {
          return null;
        }
      },
      onChanged: (_val) {
        idDispisitivo = _val;
        setState(() {
          lugarDevice = idDispisitivo;
        });
      },
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
