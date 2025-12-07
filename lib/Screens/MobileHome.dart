import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/Constants/Colors.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Mobile",
          style: TextStyle(color: CustomColors.primaryText),
        ),
      ),
    );
  }
}
