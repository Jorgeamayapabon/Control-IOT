import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:http/http.dart' as http;

class SettingPage extends StatefulWidget {
  final String lugar;
  final int position;
  SettingPage(this.lugar, this.position);
  @override
  _SettingPageState createState() => _SettingPageState();
}

// Future<http.Response> dataConfig(){
//   return http.put(Uri.parse('http://192.168.4.1/guardar_conf?ssid=TIGO-C6F6&pass=2NJ557302985&userID=jeap1723&lugarID=Baño'));
// }

class _SettingPageState extends State<SettingPage> {
  String initURL = 'http://192.168.4.1';
  WebViewController _controller;

  _refreshPage() async{
    var url = await _controller.currentUrl();
    _controller.loadUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _helpAlert(context),
        child: Text('?', style: TextStyle(color: Colors.white, fontSize: 35.0),),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Configuración ${widget.lugar}',
          style: TextStyle(
            fontFamily: "tepeno",
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh), 
            onPressed: _refreshPage,
            color: Colors.purple[50],
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: refreshWeb,
        child: WebView(
          initialUrl: initURL,
          // initialUrl: "https://www.google.com",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (webViewController){
            _controller = webViewController;
          },
        ),
      ),
    );
  }

  Future<Null> refreshWeb() async{
    final duration = Duration(seconds: 2);
    _refreshPage();
    return Future.delayed(duration);
  }

  void _helpAlert(BuildContext context){
    GlobalKey<FormState> formkey = GlobalKey<FormState>();

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text('Ayuda'),
          content: Form(
            key: formkey,
            child: Text('Para configurar tu dispositivo: \n\n -Tu dispositivo debe estar en modo configuración \n -Conecta tu telefono a la red \niot-control con la contraseña 12345678'),
          ),
        );
      },
    );
  }
}