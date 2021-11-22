import 'package:electric_control_iot/pages/control_page.dart';
import 'package:electric_control_iot/pages/prevGraphic_page.dart';
import 'package:electric_control_iot/pages/setting_page.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class DeviceOption extends StatefulWidget {
  final String lugar;
  final int position;
  DeviceOption(this.lugar, this.position);

  @override
  _DeviceOptionState createState() => _DeviceOptionState(lugar,position);
}

final userReference = FirebaseDatabase.instance.reference().child('USUARIOS');

class _DeviceOptionState extends State<DeviceOption> {
  final String lugar;
  final int position;
  _DeviceOptionState(this.lugar,this.position);

  int _currentIndex = 0;
  // int index = 0;
  
  @override
  Widget build(BuildContext context) {
    // String lugar = widget.lugar;
    // int position = widget.position;
    void onTabTapped(int index){
      setState(() {
        _currentIndex = index;
        //print(_currentIndex);
       });
    }

    List<Widget> navigatorBar = [
      ControlPage(lugar, position),
      PrevGraphicPage(lugar, position),
      SettingPage(lugar, position),
    ];    

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.purple[50],
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.devices), label: 'Control'),
          BottomNavigationBarItem(icon: Icon(Icons.graphic_eq), label: 'Consumo'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configuración'),
        ],),
      body: navigatorBar[_currentIndex],
    );
  }
}