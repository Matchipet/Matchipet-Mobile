import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OffePetsPage extends StatefulWidget {
  const OffePetsPage({super.key});

  @override
  State<OffePetsPage> createState() => _OffePetsPageState();
}

class _OffePetsPageState extends State<OffePetsPage> {
  double _currentValue = 1;
  String shelterName = "PatitasHome";
  int _years = 0;
  int _months = 0;
  List animalType=[
    "Perros","Gatos","Conejos","Aves","Hamsters","Peces"];
  List size=[
    "Pequeño",
    "Mediano",
    "Grande"
  ];
  List gender=[
    "Masculino",
    "Femenino",
    "Otro"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 25),
                    child: Text(shelterName+ ", es hora de",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),//welcome
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text("¡Dar en Adopción!",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),//phrase
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                    child: MaterialButton(
                      onPressed: () {
                        // Lógica que se ejecutará cuando se presione el botón
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Ajusta el valor para controlar el radio de los bordes redondos
                      ),
                      padding: EdgeInsets.all(0), // Puedes ajustar el padding según tus necesidades
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0), // Ajusta el mismo valor que en el shape para que la imagen tenga bordes redondos
                          image: DecorationImage(
                            image: AssetImage('lib/images/background.png'), // Reemplaza 'ruta_de_la_imagen.jpg' con la ruta de tu imagen de fondo
                            fit: BoxFit.cover, // Ajusta el modo de ajuste de la imagen (cover, contain, etc.)
                          ),
                        ),
                        child: Container(
                          constraints: BoxConstraints(minHeight: 100.0),
                          alignment: Alignment.centerLeft, // Alinea el contenido a la izquierda
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 40), // Ajusta el espaciado del texto a la izquierda
                                child: Text(
                                  'Subir',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 50), // Ajusta el espaciado del texto a la izquierda
                                child: Text(
                                  'Foto',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),//foto
                  Padding(
                    padding: const EdgeInsets.all(20),
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
                              prefixIcon: Icon(Icons.pets),
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
                  ),//nombre
                  Row(
                    children: [
                      Expanded( // Primer DropdownButtonFormField en la mitad izquierda del Row
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20,0,20,20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xfff2f2f2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: DropdownButtonFormField(
                                items: animalType.map((name) {
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
                                  hintText: "Animal",
                                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                                  prefixIcon: Icon(Icons.pets),
                                  prefixIconColor: MaterialStateColor.resolveWith((states) =>
                                  states.contains(MaterialState.focused) ? Colors.red : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded( // Segundo DropdownButtonFormField en la mitad derecha del Row
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20,10,20,20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xfff2f2f2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: DropdownButtonFormField(
                                items: gender.map((name) {
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
                                  prefixIcon: Icon(Icons.pets),
                                  prefixIconColor: MaterialStateColor.resolveWith((states) =>
                                  states.contains(MaterialState.focused) ? Colors.red : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Slider(
                          value: _currentValue,
                          min: 0,
                          max: (size.length - 1).toDouble(),
                          divisions: size.length - 1,
                          onChanged: (newValue) {
                            setState(() {
                              _currentValue = newValue;
                            });
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              size.first,
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              "Mediano",
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              size.last,
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),//tamaño
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                    child: SingleChildScrollView( // Utilizamos SingleChildScrollView
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 50, // Altura fija para el CupertinoPicker
                                  child: CupertinoPicker(
                                    itemExtent: 32,
                                    onSelectedItemChanged: (index) {
                                      setState(() {
                                        _years = index;
                                      });
                                    },
                                    children: List.generate(30, (index) => Text('$index años')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 50, // Altura fija para el CupertinoPicker
                                  child: CupertinoPicker(
                                    itemExtent: 32,
                                    onSelectedItemChanged: (index) {
                                      setState(() {
                                        _months = index;
                                      });
                                    },
                                    children: List.generate(13, (index) => Text('$index meses')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),//edad
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,10,20,10),
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
                              hintText: "Raza",
                              prefixIcon: Icon(Icons.pets),
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
                  ),//raza
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffe3213f),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 0, // Establecer la elevación a 0 para quitar la sombra

                    ),
                    onPressed: () {
                    },
                    child: Text(
                      "Siguiente",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),

                ],
              )
          ),
        ),
      ),
    );
  }
}
