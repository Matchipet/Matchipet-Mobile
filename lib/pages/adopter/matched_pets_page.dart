import 'package:flutter/material.dart';

class MatchedPetsPage extends StatefulWidget {
  const MatchedPetsPage({super.key});

  @override
  State<MatchedPetsPage> createState() => _MatchedPetsPageState();
}

class _MatchedPetsPageState extends State<MatchedPetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            "Favorite"
        ),
      ),
    );
  }
}
