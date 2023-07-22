import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:matchipet/pages/adopter/matched_pets_page.dart';
import 'package:matchipet/pages/login_page.dart';
import 'adopt_match_page.dart';
import 'donations_page.dart';
import 'profile_page.dart';

class AdopterMenu extends StatefulWidget {
  const AdopterMenu({super.key});

  @override
  State<AdopterMenu> createState() => _AdopterMenuState();
}

class _AdopterMenuState extends State<AdopterMenu> {
  int currentIndex = 0;

  void goToPage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> _pages = [
    //adoptar
    AdoptMatchPage(),

    //favoritos
    MatchedPetsPage(),

    //donaciones
    DonationsPage(),

    //profile
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Matchipet",
          style: TextStyle(
            color: Colors.black, // Color de texto negro
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,// Quita la sombra del AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.logout,color: Colors.black,),
            onPressed: () {
              // Aquí puedes agregar el código para la funcionalidad de logout
              // Por ejemplo, cerrar sesión y navegar a la pantalla de inicio de sesión
            },
          ),
        ],
      ),
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
                text: 'Adoptar',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Interesados',
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
