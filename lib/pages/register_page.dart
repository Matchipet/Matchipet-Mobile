import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Importa el paquete
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  DateTime _dateTime=DateTime.now();
  TextEditingController _dateController = TextEditingController();
  List distritos=[
    "Miraflores",
    "Barranco",
    "San Isidro",
    "Santiago de Surco",
    "San Borja",
    "La Molina",
    "Jesús María",
    "Magdalena del Mar",
    "Pueblo Libre",
    "Lince",
    "San Miguel",
    "Breña",
    "La Victoria",
    "Callao"
  ];

  void _showDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1933),
        lastDate: DateTime(2024),
    ).then((selectedDate) {
      // Actualizar el valor de _dateTime y del TextEditingController
      if (selectedDate != null && selectedDate != _dateTime) {
        setState(() {
          _dateTime = selectedDate;
          _dateController.text = _dateTime.toString().split(' ')[0];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFe76a68),
              Color(0xFFeb726f),
              Color(0xFFe5555f),
              Color(0xFFd83951),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,10),
                  child: Text(
                    "Crea una Cuenta !",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20,5,20,5),
                  padding: const EdgeInsets.fromLTRB(20,20,20,20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xfff2f2f2),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,0,0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Nombre y apellidos",
                                  prefixIcon: Icon(Icons.person),
                                  contentPadding: EdgeInsets.symmetric(vertical: 15), // Ajusta el relleno vertical
                                  prefixIconColor: MaterialStateColor.resolveWith((states) =>
                                  states.contains(MaterialState.focused)
                                      ? Colors.red
                                      : Colors.grey)
                                // Icono para el campo de Email
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xfff2f2f2),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,0,0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.email),
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                  prefixIconColor: MaterialStateColor.resolveWith((states) =>
                                  states.contains(MaterialState.focused)
                                      ? Colors.red
                                      : Colors.grey)// Icono para el campo de Email
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0,15,15,15),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xfff2f2f2),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                  child: TextField(
                                    controller: _dateController, // Usar el TextEditingController
                                    readOnly: true,
                                    onTap: _showDatePicker,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Nacimiento",
                                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                                        prefixIcon: Icon(Icons.calendar_today),
                                        prefixIconColor: MaterialStateColor.resolveWith((states) =>
                                        states.contains(MaterialState.focused)
                                            ? Colors.red
                                            : Colors.grey)// Icono para el campo de Email
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ), // Espacio entre los dos TextFields
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0,15,0,15),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xfff2f2f2),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Celular",
                                        prefixIcon: Icon(Icons.phone),
                                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                                        prefixIconColor: MaterialStateColor.resolveWith((states) =>
                                        states.contains(MaterialState.focused)
                                            ? Colors.red
                                            : Colors.grey)// Icono para el campo de Email
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xfff2f2f2),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,0),
                            child: DropdownButtonFormField(
                              items: distritos.map((name) {
                                return DropdownMenuItem(
                                  child: Text(name),
                                  value: name,
                                );
                              }).toList(),
                              onChanged: (value){
                                print(value);
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Distrito",
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                  prefixIcon: Icon(Icons.location_city),
                                  prefixIconColor: MaterialStateColor.resolveWith((states) =>
                                  states.contains(MaterialState.focused)
                                      ? Colors.red
                                      : Colors.grey)// Icono para el campo de Email
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xfff2f2f2),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,0,0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Contraseña",
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                  prefixIcon: Icon(Icons.lock), // Icono para el campo de Contraseña
                                  prefixIconColor: MaterialStateColor.resolveWith((states) =>
                                  states.contains(MaterialState.focused)
                                      ? Colors.red
                                      : Colors.grey)// Icono para el campo de Email
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xfff2f2f2),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,0,0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Confirmar contraseña",
                                  prefixIcon: Icon(Icons.lock), // Icono para el campo de Contraseña
                                  prefixIconColor: MaterialStateColor.resolveWith((states) =>
                                  states.contains(MaterialState.focused)
                                      ? Colors.red
                                      : Colors.grey)// Icono para el campo de Email
                              ),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffff4f4f),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Registrarse",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 15), // Espacio entre los campos de texto y el botón
                      //REGISTRARSE
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "¿Tienes una cuenta?",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                            },
                            child: Text(
                              "  Inicia sesion",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffff4f4f),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

