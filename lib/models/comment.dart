/*

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: Text('IOT CONTROL'),
        backgroundColor: Colors.purple,
        centerTitle: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 20.0),
              //   child: Text(
              //     "IOT CONTROL",
              //     style: TextStyle(
              //       fontSize: 40.0,
              //       fontStyle: FontStyle.italic,
              //       color: Colors.purple,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 20.0),
              //   child: Text(
              //     "Usuario",
              //     style: TextStyle(
              //       fontSize: 30.0,
              //     ),
              //   ),
              // ),
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Form(
                  key: formkey,
                  child: Column(
                    children: <Widget>[
                      // TextFormField(
                      //   cursorColor: Colors.purple,
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(20.0)),
                      //     labelText: "Email",
                      //   ),
                      //   validator: MultiValidator([
                      //     RequiredValidator(
                      //         errorText: "Este Campo es Necesario"),
                      //     EmailValidator(
                      //         errorText: "Correo Electronico Invalido"),
                      //   ]),
                      //   onChanged: (val) {
                      //     email = val;
                      //   },
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 15.0),
                      //   child: TextFormField(
                      //     cursorColor: Colors.purple,
                      //     obscureText: true,
                      //     decoration: InputDecoration(
                      //         border: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(20.0)),
                      //         labelText: "Contraseña"),
                      //     validator: MultiValidator([
                      //       RequiredValidator(
                      //           errorText: "Contraseña es Necesaria"),
                      //       MinLengthValidator(6,
                      //           errorText: "Minimo 6 Caracteres"),
                      //     ]),
                      //     onChanged: (val) {
                      //       password = val;
                      //     },
                      //   ),
                      // ),
                      // ElevatedButton (
                      //   // passing an additional context parameter to show dialog boxs
                      //   onPressed: login,
                      //   style: ElevatedButton.styleFrom(
                      //     primary: Colors.purple,
                      //     textStyle: TextStyle(color: Colors.white)
                      //   ),
                      //   child: Text(
                      //     "Ingresar",
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  onPrimary: Colors.purple[50],
                  minimumSize: Size(200.0, 50.0),
                ),
                label: Text('Inicia con Google'),
                onPressed: () => googleSignIn().whenComplete(() async {

                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => DevicesPage()));
                }),
                icon: FaIcon(FontAwesomeIcons.google, color: Colors.purple[50],),
              ),
              // MaterialButton(
              //   padding: EdgeInsets.zero,
              //   onPressed: () => googleSignIn().whenComplete(() async {

              //     Navigator.of(context).pushReplacement(MaterialPageRoute(
              //         builder: (context) => DevicesPage()));
              //   }),
              //   child: Image(
              //     image: AssetImage('assets/signin.png'),
              //     width: 200.0,
              //   ),
              // ),
              // SizedBox(
              //   height: 10.0,
              // ),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.grey[600],
              //     textStyle: TextStyle(color: Colors.white)
              //   ),
              //   onPressed: () {
              //     // send to login screen
              //     Navigator.of(context).push(
              //         MaterialPageRoute(builder: (context) => SignUpScreen()));
              //   },
              //   child: Text(
              //     "Registrate",
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

// print(selMesCon);
// print(yearSelMap);
// print(yearSelMap.toString().length);
// print(" ");
// print(mesSelMap);
// print("Espacio");
// print(consumoList);
print(consumoList);

//String mes13 = "0, 1.13864, 1.13724, 1.12197, 1.12478, 1.15034, 1.14769, 1.14948, 1.15194, 1.14675, 1.14754, 1.13947, 1.14328, 1.14034, 1.13869, 1.13542, 1.13674, 1.13101, 1.13437, 1.13074, 1.13193, 1.03760, 1.14123, 1.14959, 1.15341, 1.15234, 1.14970, 0.4195, 0.0, 0.0, 0.0, 0.0";
//String dic13 = "0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 29.98";

{
  'Nevera':
  {
    'Estado':'true',
    'Lugar':'Nevera',
    'Consumo':'Consumo'
  },
  'Sala':
  {
    'Estado':'true',
    'Lugar':'Sala',
    'Consumo':'Consumo'
  },
  'Cocina':
  {
    'Estado':'true',
    'Lugar':'Cocina',
    'Consumo':'Consumo'
  }
}



Center(
          child: ListView.builder(
            itemCount: lugar.length,
            itemBuilder: (context, position){
              
              return Card(
                child: Column(
                  children: <Widget>[
                    Divider(height: 7.0,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: ListTile(
                            title: Text('${lugar[position]}',style: TextStyle(color: Colors.purple, fontSize: 21.0),),
                            onTap: () => _navigateToDevicesOption(context, lugar[position], position),
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
        )

*/



/*

// position = position;

// Map lugarMap = lugarJson[lugar[position]];
// String lugarD = lugarMap['Lugar'];
// String estadoD = lugarMap['Estado'];
// String consumoD = lugarMap['Consumo'];
// print('El tamaño de la lista es de ${lugar.length}');
// print(lugar);
// print(lugarJson);
// print(lugarD);  
// print(estadoD);
// print(consumoD);
// print(position);

SwitchListTile(
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
)
{
  "USUARIO": jeap1723,
  "Dispositivos":[
    {
      "Consumo":[
        {
          "Año":[
            {
              "2021":[
                {
                  "Mes":[
                    {
                      "Dic":{
                        "1": "0.0",
                        "2": "0.0",
                        "3": "0.0",
                        "4": "0.0",
                        "5": "0.0",
                        "6": "0.0",
                        "7": "0.0",
                        "8": "0.0",
                        "9": "0.0",
                        "10": "0.0",
                        "11": "0.0",
                        "12": "0.0",
                        "13": "0.0",
                        "14": "0.0",
                        "15": "0.0",
                        "16": "0.0",
                        "17": "0.0",
                        "18": "0.0",
                        "19": "0.0",
                        "20": "0.0",
                        "21": "0.0",
                        "22": "0.0",
                        "23": "0.0",
                        "24": "0.0",
                        "25": "0.0",
                        "26": "0.0",
                        "27": "0.0",
                        "28": "0.0",
                        "29": "0.0",
                        "30": "0.0",
                        "31": "0.0",
                      }
                    },
                    "Dic":{
                      "1": "0.0",
                      "2": "0.0",
                      "3": "0.0",
                      "4": "0.0",
                      "5": "0.0",
                      "6": "0.0",
                      "7": "0.0",
                      "8": "0.0",
                      "9": "0.0",
                      "10": "0.0",
                      "11": "0.0",
                      "12": "0.0",
                      "13": "0.0",
                      "14": "0.0",
                      "15": "0.0",
                      "16": "0.0",
                      "17": "0.0",
                      "18": "0.0",
                      "19": "0.0",
                      "20": "0.0",
                      "21": "0.0",
                      "22": "0.0",
                      "23": "0.0",
                      "24": "0.0",
                      "25": "0.0",
                      "26": "0.0",
                      "27": "0.0",
                      "28": "0.0",
                      "29": "0.0",
                      "30": "0.0",
                      "31": "0.0",
                    }
                  ]
                }
              ]
            }
          ]
        },
      ],
      "Lugar": "Nevera"
      "Estado": "false"
    }
  ]
}



// To parse this JSON data, do
//
//     final consumoReal = consumoRealFromJson(jsonString);

import 'dart:convert';

ConsumoReal consumoRealFromJson(String str) => ConsumoReal.fromJson(json.decode(str));

String consumoRealToJson(ConsumoReal data) => json.encode(data.toJson());

class ConsumoReal {
    ConsumoReal({
        this.usuarios,
        this.dispositivos,
    });

    String usuarios;
    List<Dispositivo> dispositivos;

    factory ConsumoReal.fromJson(Map<String, dynamic> json) => ConsumoReal(
        usuarios: json["USUARIOS"],
        dispositivos: List<Dispositivo>.from(json["Dispositivos"].map((x) => Dispositivo.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "USUARIOS": usuarios,
        "Dispositivos": List<dynamic>.from(dispositivos.map((x) => x.toJson())),
    };
}

class Dispositivo {
    Dispositivo({
        this.lugar,
        this.estado,
        this.consumo,
    });

    String lugar;
    String estado;
    Consumo consumo;

    factory Dispositivo.fromJson(Map<String, dynamic> json) => Dispositivo(
        lugar: json["Lugar"],
        estado: json["Estado"],
        consumo: Consumo.fromJson(json["Consumo"]),
    );

    Map<String, dynamic> toJson() => {
        "Lugar": lugar,
        "Estado": estado,
        "Consumo": consumo.toJson(),
    };
}

class Consumo {
    Consumo({
        this.the2021,
    });

    List<The2021> the2021;

    factory Consumo.fromJson(Map<String, dynamic> json) => Consumo(
        the2021: List<The2021>.from(json["2021"].map((x) => The2021.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "2021": List<dynamic>.from(the2021.map((x) => x.toJson())),
    };
}

class The2021 {
    The2021({
        this.ene,
        this.feb,
    });

    Map<String, String> ene;
    Map<String, String> feb;

    factory The2021.fromJson(Map<String, dynamic> json) => The2021(
        ene: Map.from(json["Ene"]).map((k, v) => MapEntry<String, String>(k, v)),
        feb: Map.from(json["Feb"]).map((k, v) => MapEntry<String, String>(k, v)),
    );

    Map<String, dynamic> toJson() => {
        "Ene": Map.from(ene).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "Feb": Map.from(feb).map((k, v) => MapEntry<String, dynamic>(k, v)),
    };
}

 */