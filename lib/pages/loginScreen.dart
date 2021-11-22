import 'package:electric_control_iot/pages/devices.dart';
import 'package:electric_control_iot/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  // void login() {
  //   if (formkey.currentState.validate()) {
  //     formkey.currentState.save(); 
  //     AuthService().signin(email, password, context).then((value) {
  //       if (value != null) {

  //         Navigator.pushReplacement(
  //             context,
  //             MaterialPageRoute(
  //               builder: (context) => DevicesPage(),
  //             ));
  //       }
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Image(
              image: AssetImage('assets/logoIOT.png'),
              height: 240.0,
              width: 240.0,
            ),
            //FlutterLogo(size: 120.0),
            Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Bienvenido a, \nIOT CONTROL',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Inicia sesión para continuar',
                style: TextStyle(fontSize: 16.0, color: Colors.purple),
              ),
            ),
            SizedBox(height: 40.0),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.purple[50],
                minimumSize: Size(200.0, 50.0),
              ),
              label: Text('Inicia con Google'),
              onPressed: () => AuthService().googleSignIn().then((user) async {

                if(user != null){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DevicesPage()));
                }
              }),
              icon: FaIcon(FontAwesomeIcons.google, color: Colors.purple[50],),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
