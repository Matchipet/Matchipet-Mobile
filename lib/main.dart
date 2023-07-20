import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: Color(0xffd24c4b), // Color principal de tu aplicación
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color(0xffd24c4b), // Color del cursor en los campos de texto
          selectionColor: Color(0xffd24c4b).withOpacity(0.5), // Color de selección de texto en los campos de texto
          selectionHandleColor: Color(0xffd24c4b), // Color de los controles de selección de texto
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusColor: Color(0xffd24c4b), // Color de enfoque de los iconos (al hacer clic en el TextField)
          // Otros estilos de InputDecoration aquí...
        ),
        colorScheme: ThemeData().colorScheme.copyWith(
          secondary: Color(0xffd24c4b),
        ),

      ),
      home: LoginPage(),
    );
  }
}

