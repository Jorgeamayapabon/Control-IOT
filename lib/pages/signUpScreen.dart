import 'package:electric_control_iot/pages/devices.dart';
import 'package:electric_control_iot/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'loginScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String email;
  String password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void handleSignup() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      AuthService().signUp(email.trim(), password, context).then((value) {
        if (value != null) {

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DevicesPage(),
              ));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "CREAR CUENTA",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.purple,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Form(
                  key: formkey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          labelText: "Email",
                        ),
                        validator: (_val) {
                          if (_val.isEmpty) {
                            return "Este Campo es Necesario.";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (val) {
                          email = val;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              labelText: "Contraseña"),
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "Este Campo es Necesario."),
                            MinLengthValidator(6,
                                errorText: "Minimo 6 Caracteres.")
                          ]),
                          onChanged: (val) {
                            password = val;
                          },
                        ),
                      ),
                      ElevatedButton(
                        onPressed: handleSignup,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          textStyle: TextStyle(color: Colors.white)
                        ),
                        child: Text(
                          "Registrarse",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[600],
                  textStyle: TextStyle(color: Colors.white)
                ),
                onPressed: () {
                  // send to login screen
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  "Ingresar",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
