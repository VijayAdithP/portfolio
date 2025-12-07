import 'package:flutter/material.dart';
import 'package:my_portfolio/Constants/Colors.dart';
import 'package:my_portfolio/Screens/Presentation/widget/cursor_glow_widget.dart';

class WebHome extends StatefulWidget {
  const WebHome({super.key});

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryBackground,
      body: AnimatedCursorTrail(
        child: Center(
          child: Text("Web", style: TextStyle(color: CustomColors.primaryText)),
        ),
      ),
    );
  }
}
