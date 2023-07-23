import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/adopter/adopter_menu.dart';
import 'pages/shelter/shelter_menu.dart';
import 'pages/adopter/card/match_card.dart';
import 'pages/model/candidate_model.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Poppins',
        primaryColor: Color(0xffd24c4b), // Color principal de tu aplicación
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color(0xffd24c4b), // Color del cursor en los campos de texto
          selectionColor: Color(0xff000000).withOpacity(0.1), // Color de selección de texto en los campos de texto
          selectionHandleColor: Color(0xffd24c4b), // Color de los controles de selección de texto
        ),

      ),
    );
  }
}

