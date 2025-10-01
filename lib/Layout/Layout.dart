import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/MobileHome.dart';
import 'package:my_portfolio/Screens/WebHome.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.minWidth < 750){
          return MobileHome();
        }else{
          return WebHome();
        }
      },
    );
  }
}
