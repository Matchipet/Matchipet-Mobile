import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Importa el paquete
import 'register_page.dart';
import 'adopter/adopter_menu.dart';
import 'shelter/shelter_menu.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();


  void _login(BuildContext context, String email, String password) {

    if (email.isEmpty || password.isEmpty) {
      // Si alguno de los campos está vacío, no se redirige
      print('Campos vacios');
      return;
    }

    if (email == 'adoptante@gmail.com') {
      // Redirige a la clase AdopterMenu si el email es 'adoptante@gmail.com'
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AdopterMenu()),
      );
    } else if (email == 'albergue@gmail.com') {
      // Redirige a la clase ShelterMenu si el email es 'albergue@gmail.com'
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ShelterMenu()),
      );
    } else {
      // Opcionalmente, puedes mostrar un mensaje de error para emails inválidos
      // O realizar otra acción en caso de no ser un email conocido
      print('Email inválido');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfff54e4b),
              Color(0xffef4d49),
              Color(0xffe3545e),
              Color(0xffe3213f),
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
                  padding: const EdgeInsets.fromLTRB(0,0,0,15),
                  child: Text(
                    "Match con tu Peludito Ideal !",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 100, // Tamaño horizontal deseado de la imagen
                  height: 100, // Tamaño vertical deseado de la imagen
                  child: Image.asset(
                    'lib/images/matchipet.png', // Ajusta la ruta de la imagen según la ubicación real
                    fit: BoxFit.contain, // Ajusta cómo se escala la imagen dentro del contenedor
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,15,0,30),
                  child: Text(
                    "Bienvenido a Matchipet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
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
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xfff2f2f2),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,0,0),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                prefixIcon: Icon(Icons.email),
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
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xfff2f2f2),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,0,0),
                            child: TextField(
                              controller: passwordController,
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffff4f4f),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 0, // Establecer la elevación a 0 para quitar la sombra
                        ),
                        onPressed: () {
                          _login(context, emailController.text, passwordController.text);
                        },
                        child: Text(
                          "Iniciar Sesion",
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
                            "¿Estás Registrado?",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterOptionsBackground()));
                            },
                            child: Text(
                              "  Registrate ahora",
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
