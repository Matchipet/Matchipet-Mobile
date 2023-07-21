import 'package:flutter/material.dart';

class OffePetsPage extends StatefulWidget {
  const OffePetsPage({super.key});

  @override
  State<OffePetsPage> createState() => _OffePetsPageState();
}

class _OffePetsPageState extends State<OffePetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            "Ofrecer mascotas"
        ),
      ),
    );
  }
}
