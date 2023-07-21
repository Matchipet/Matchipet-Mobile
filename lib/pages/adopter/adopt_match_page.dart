import 'package:flutter/material.dart';

class AdoptMatchPage extends StatefulWidget {
  const AdoptMatchPage({super.key});

  @override
  State<AdoptMatchPage> createState() => _AdoptMatchPageState();
}

class _AdoptMatchPageState extends State<AdoptMatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Adopt"
        ),
      ),
    );
  }
}
