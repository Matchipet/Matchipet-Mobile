import 'package:flutter/material.dart';
import 'offer_pets_pages/card/pet_requiered_card.dart';
import '../model/candidate_model.dart';

class AdoptersPage extends StatefulWidget {
  const AdoptersPage({super.key});

  @override
  State<AdoptersPage> createState() => _AdoptersPageState();
}

class _AdoptersPageState extends State<AdoptersPage> {
  //"Aqui se mostraran cards de solo los animales con una bolita roja en la esquina superior derecha \n con el numero de las personas interesadas \n cuando le de click se abrira una nueva ventana con las personas interesadas"
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Dos columnas
                  crossAxisSpacing: 4, // Espacio horizontal entre los elementos
                  mainAxisSpacing: 15, // Espacio vertical entre los elementos
                ),
                itemCount: candidates.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        PetRequiredCard(candidate: candidates[index])
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
