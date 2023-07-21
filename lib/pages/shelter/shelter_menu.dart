import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'adopters_pages.dart';
import 'donations_page.dart';
import 'offer_pets_page.dart';
import 'profile_page.dart';

class ShelterMenu extends StatefulWidget {
  const ShelterMenu({super.key});

  @override
  State<ShelterMenu> createState() => _ShelterMenuState();
}

class _ShelterMenuState extends State<ShelterMenu> {
  int currentIndex = 0;

  void goToPage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> _pages = [
    //ofrecer
      OffePetsPage(),

    //adoptantes
      AdoptersPage(),

    //donaciones
      DonationPage(),

    //profile
      ProfilePage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        color: Color(0xffe3213f),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: GNav(
            gap: 8,
            backgroundColor: Color(0xffe3213f),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color(0x4dff6060),
            padding: EdgeInsets.all(20),
            onTabChange: (index) {
              goToPage(index);
            },
            tabs: [
              GButton(
                icon: Icons.pets,
                text: 'Ofrecer',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Adoptantes',
              ),
              GButton(
                icon: Icons.card_giftcard,
                text: 'Donaciones',
              ),
              GButton(
                icon: Icons.person,
                text: 'Perfil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
