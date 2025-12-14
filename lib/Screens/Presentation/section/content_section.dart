import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/Constants/Colors.dart';
import 'package:my_portfolio/Screens/Presentation/sub-sections/exp_section.dart';

class ContentSection extends ConsumerStatefulWidget {
  const ContentSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContentSectionState();
}

class _ContentSectionState extends ConsumerState<ContentSection> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenheight = screenSize.height;

    return Scrollbar(
      interactive: false,
      trackVisibility: true,
      thumbVisibility: true,
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsetsGeometry.only(
              top: screenheight * 0.1,
              right: screenWidth * 0.1,
            ),
            sliver: SliverToBoxAdapter(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: CustomColors.secondaryText),
                  children: [
                    TextSpan(
                      text:
                          "This is one of my personal descriptions this is to be extendded for multiple lines and paragraphs  is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphs",
                    ),
                    TextSpan(
                      text:
                          "This is one of my personal descriptions this is to be extendded for multiple lines and paragraphs  is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphs\n\n\n",
                    ),
                    TextSpan(
                      text:
                          "This is one of my personal descriptions this is to be extendded for multiple lines and paragraphs  is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphsThis is one of my personal descriptions this is to be extendded for multiple lines and paragraphs",
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.only(
              top: screenheight * 0.1,
              right: screenWidth * 0.1,
            ),
            sliver: SliverList.builder(
              itemCount: 3,
              itemBuilder: (inx, ctx) {
                return ExpSubSection();
              },
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.only(
              top: screenheight * 0.05,
              bottom: screenheight * 0.05,
            ),
            sliver: SliverFloatingHeader(
              animationStyle: AnimationStyle.noAnimation,
              child: Text(
                "data",
                style: TextStyle(
                  fontSize: 30,
                  color: CustomColors.secondaryText,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.only(right: screenWidth * 0.1),
            sliver: SliverList.builder(
              itemCount: 3,
              itemBuilder: (inx, ctx) {
                return ExpSubSection();
              },
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.only(right: screenWidth * 0.1),
            sliver: SliverList.builder(
              itemCount: 3,
              itemBuilder: (inx, ctx) {
                return ExpSubSection();
              },
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.only(
              top: screenheight * 0.05,
              bottom: screenheight * 0.05,
            ),
            sliver: SliverFloatingHeader(
              animationStyle: AnimationStyle.noAnimation,
              child: Text(
                "data",
                style: TextStyle(
                  fontSize: 30,
                  color: CustomColors.secondaryText,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.only(
              right: screenWidth * 0.1,
              bottom: screenheight * 0.085,
            ),
            sliver: SliverList.builder(
              itemCount: 3,

              itemBuilder: (inx, ctx) {
                return ExpSubSection();
              },
            ),
          ),
        ],
      ),
      // ListView.builder(
      //   padding: EdgeInsets.symmetric(
      //     vertical: screenheight * 0.1,
      //     horizontal: screenheight * 0.1,
      //   ),
      //   itemCount: 30,
      //   itemBuilder: (BuildContext context, int index) {
      //     return ListTile(
      //       title: Text('List Item $index'),
      //       subtitle: Text('Details for item $index'),
      //     );
      //   },
      // ),
    );
  }
}
