import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/Constants/Colors.dart';

class ExpSubSection extends ConsumerStatefulWidget {
  const ExpSubSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExpSubSectionState();
}

class _ExpSubSectionState extends ConsumerState<ExpSubSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: CustomColors.primaryHighlight),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: CustomColors.primaryHighlight),
                  ),
                ),
              ],
            ),
            Text("This is some kinda experience description"),
          ],
        ),
      ),
    );
  }
}
