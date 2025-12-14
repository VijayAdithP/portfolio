import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/Constants/Colors.dart';
import 'package:my_portfolio/Screens/Presentation/section/content_section.dart';
import 'package:my_portfolio/Screens/Presentation/section/desc_section.dart';
import 'package:my_portfolio/Screens/Presentation/widget/cursor_glow_widget.dart';
import 'package:my_portfolio/providers/cursor/cursor_pos_provider.dart';

class WebHome extends ConsumerStatefulWidget {
  const WebHome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WebHomeState();
}

class _WebHomeState extends ConsumerState<WebHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryBackground,
      body: Listener(
        behavior: HitTestBehavior.translucent,
        onPointerHover: (event) {
          ref
              .read(cursorProvider.notifier)
              .updateCursorPosition(event.position);
        },
        onPointerMove: (event) {
          ref
              .read(cursorProvider.notifier)
              .updateCursorPosition(event.position);
        },
        child: AnimatedCursorTrail(
          child: Row(
            children: [
              Expanded(flex: 1, child: DescSection()),
              Expanded(flex: 1, child: ContentSection()),
            ],
          ),
        ),
      ),
    );
  }
}
