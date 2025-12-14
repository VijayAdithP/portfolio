import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/Constants/Colors.dart';

class DescSection extends ConsumerStatefulWidget {
  const DescSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DescSectionState();
}

class _DescSectionState extends ConsumerState<DescSection> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenheight = screenSize.height;
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(
        vertical: screenheight * 0.1,
        horizontal: screenWidth * 0.1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: <Widget>[
          Text(
            'Vijay Adith',
            style: TextStyle(
              // make this a constant
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: CustomColors.primaryText,
            ),
          ),
          Text(
            // this
            'Trying to be a Flutter Developer',
            style: TextStyle(fontSize: 16, color: CustomColors.primaryText),
          ),
          Text(
            // this too
            'Currently focusing on personal projects and learning more...',
            style: TextStyle(fontSize: 16, color: CustomColors.secondaryText),
          ),
          const SizedBox(height: 50),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: screenWidth * 0),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: CustomColors.primaryHighlight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
