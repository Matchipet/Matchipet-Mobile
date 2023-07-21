import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Importa el paquete
import 'login_page.dart';

class RegisterOptionsBackground extends StatefulWidget {
  const RegisterOptionsBackground({super.key});

  @override
  State<RegisterOptionsBackground> createState() => _RegisterOptionsBackgroundState();
}

class _RegisterOptionsBackgroundState extends State<RegisterOptionsBackground> {
  String selectedUserType = "none";
  Color adoptanteButtonColor = Colors.white;
  Color adoptanteIconColor = Color(0xffe3213f);
  Color albergueButtonColor = Colors.white;
  Color albergueIconColor = Color(0xffe3213f);

  void _selectAdoptante() {
    setState(() {
      selectedUserType = "adoptante";
      adoptanteButtonColor = Color(0xffe3213f);
      adoptanteIconColor = Colors.white;
      albergueButtonColor = Colors.white;
      albergueIconColor = Color(0xffe3213f);
    });
  }

  void _selectAlbergue() {
    setState(() {
      selectedUserType = "albergue";
      adoptanteButtonColor = Colors.white;
      adoptanteIconColor = Color(0xffe3213f);
      albergueButtonColor = Color(0xffe3213f);
      albergueIconColor = Colors.white;
    });
  }

  void _continueRegistration() {
    if (selectedUserType == "adoptante") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
    }
    if (selectedUserType == "albergue") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPageShelter()));
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
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 19),
                  child: Text(
                    "Crea una Cuenta !",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0,25),
                  child: Text(
                    "¿Como quieres registrarte?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: adoptanteButtonColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                            onPressed: _selectAdoptante,
                            icon: Icon(
                              Icons.person_4_outlined,
                              color: adoptanteIconColor,
                              size: 70,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Adoptante",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: albergueButtonColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                            onPressed: _selectAlbergue,
                            icon: Icon(
                              Icons.holiday_village,
                              color: albergueIconColor,
                              size: 70,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Albergue",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,30,0,0),
                  child: SizedBox(
                    width: 150, // Ajusta el ancho del botón según tus necesidades
                    height: 40, // Ajusta el alto del botón según tus necesidades
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffe3213f),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: _continueRegistration,
                      child: Text(
                        "Continuar",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}



class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

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
                          elevation: 0, // Establecer la elevación a 0 para quitar la sombra
                        ),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterPageStep()));
                        },
                        child: Text(
                          "Siguiente",
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

class RegisterPageStep extends StatefulWidget {
  const RegisterPageStep({super.key});

  @override
  State<RegisterPageStep> createState() => _RegisterPageStepState();
}

class _RegisterPageStepState extends State<RegisterPageStep> {

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
  List generos=[
    "Masculino",
    "Femenino",
    "Otro"
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
                            padding: const EdgeInsets.fromLTRB(0,0,0,0),
                            child: DropdownButtonFormField(
                              items: generos.map((name) {
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
                                  hintText: "Genero",
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                  prefixIcon: Icon(Icons.people_alt),
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffff4f4f),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 0, // Establecer la elevación a 0 para quitar la sombra

                        ),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
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


class RegisterPageShelter extends StatefulWidget {
  const RegisterPageShelter({super.key});


  @override
  State<RegisterPageShelter> createState() => _RegisterPageShelterState();
}

class _RegisterPageShelterState extends State<RegisterPageShelter> {

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
                  padding: const EdgeInsets.fromLTRB(0,0,0,10),
                  child: Text(
                    "Crea una Cuenta !",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,10),
                  child: Text(
                    "Albergue",
                    style: TextStyle(
                      fontSize: 20,
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
                                  hintText: "Nombre",
                                  prefixIcon: Icon(Icons.house),
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
                          elevation: 0, // Establecer la elevación a 0 para quitar la sombra

                        ),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterPageShelterStep()));
                        },
                        child: Text(
                          "Siguiente",
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

class RegisterPageShelterStep extends StatefulWidget {
  const RegisterPageShelterStep({super.key});

  @override
  State<RegisterPageShelterStep> createState() => _RegisterPageShelterStepState();
}

class _RegisterPageShelterStepState extends State<RegisterPageShelterStep> {

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
                  padding: const EdgeInsets.fromLTRB(0,0,0,10),
                  child: Text(
                    "Crea una Cuenta !",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,10),
                  child: Text(
                    "Albergue",
                    style: TextStyle(
                      fontSize: 20,
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
                            padding: const EdgeInsets.fromLTRB(0,0,0,0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Direccion",
                                  prefixIcon: Icon(Icons.house),
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffff4f4f),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 0, // Establecer la elevación a 0 para quitar la sombra

                        ),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
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



