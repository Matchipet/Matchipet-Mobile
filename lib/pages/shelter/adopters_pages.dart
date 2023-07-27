import 'package:flutter/material.dart';

class AdoptersPage extends StatefulWidget {
  const AdoptersPage({super.key});

  @override
  State<AdoptersPage> createState() => _AdoptersPageState();
}

class _AdoptersPageState extends State<AdoptersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            "Aqui se mostraran cards de solo los animales con una bolita roja en la esquina superior derecha \n con el numero de las personas interesadas \n cuando le de click se abrira una nueva ventana con las personas interesadas"
        ),
      ),
    );
  }
}
