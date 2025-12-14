import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/Constants/CursorGlow.dart';
import 'package:my_portfolio/providers/cursor/cursor_pos_provider.dart';

class AnimatedCursorTrail extends ConsumerWidget {
  const AnimatedCursorTrail({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cursor = ref.watch(cursorProvider);
    return Stack(
      children: [
        AnimatedPositioned(
          left: cursor.offset.dx - cursor.size.width / 2,
          top: cursor.offset.dy - cursor.size.height / 2,
          width: cursor.size.width,
          height: cursor.size.height,
          duration: Duration(seconds: 0),
          child: IgnorePointer(child: CursorGlow()),
        ),

        Positioned.fill(child: child!),
      ],
    );
  }
}
