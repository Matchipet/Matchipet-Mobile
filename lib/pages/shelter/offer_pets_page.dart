import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fk_toggle/fk_toggle.dart';
import 'offer_pets_pages/adoption.dart';
import 'offer_pets_pages/my_pets.dart';

class OffePetsPage extends StatefulWidget {
  const OffePetsPage({super.key});

  @override
  State<OffePetsPage> createState() => _OffePetsPageState();
}

class _OffePetsPageState extends State<OffePetsPage> {
  String shelterName = "Entre Patas";
  bool adoptionPage=true;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {

    final OnSelected selected = (index, instance) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    };
    final toggles = [FkToggle(
        width: 200,
        height: 40,
        labels: const ['¡Dar en Adopción!', 'Ver en adopcion'],
        selectedColor: Color(0xffef3854),
        backgroundColor: Color(0xfff8f8f8),
        cornerRadius: 30,
        onSelected: selected)];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 25),
              child: Text(shelterName+ ", es hora de ...",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),//welcome
            Column(
              children: toggles
                  .map(
                    (e) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: e,
                ),
              )
                  .toList(),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    adoptionPage = index == 0;
                  });
                },
                children: [
                  Adoption(),
                  MyPets(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

