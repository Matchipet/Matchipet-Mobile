import 'package:flutter/material.dart';
import 'card/my_pet_card.dart';
import '../../model/candidate_model.dart';

class MyPets extends StatefulWidget {
  const MyPets({super.key});

  @override
  State<MyPets> createState() => _MyPetsState();
}

class _MyPetsState extends State<MyPets> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: candidates.length,
        itemBuilder: (context, index) {
          final candidate = candidates[index];
          return MyPetCard(candidate: candidate);
        },
      ),
    );
  }

}
