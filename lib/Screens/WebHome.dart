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
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'This is the static side of the screen.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Icon(Icons.info_outline, size: 50, color: Colors.blue),
                    SizedBox(height: 10),
                    Text(
                      'It will not scroll, regardless of its content size.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                
                itemCount: 50, // Example item count
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('List Item $index'),
                    subtitle: Text('Details for item $index'),
                  );
                },
              ),
            ),
          ],
        ),
        // CustomScrollView(
        //   slivers: <Widget>[
        //     SliverFixedExtentList(
        //       delegate: SliverChildListDelegate.fixed([Placeholder()]),
        //       itemExtent: 1,
        //     ),
        //     SliverList(
        //       delegate: SliverChildListDelegate([
        //         Container(color: Colors.pink, height: 150.0),
        //         Container(color: Colors.cyan, height: 150.0),
        //         Container(color: Colors.indigo, height: 150.0),
        //         Container(color: Colors.blue, height: 150.0),
        //       ]),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
