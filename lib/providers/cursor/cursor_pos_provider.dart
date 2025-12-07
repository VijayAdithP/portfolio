import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/models/cursor/curor_model.dart';

class CursorProvider extends Notifier<CursorTrailState> {
  @override
  CursorTrailState build() {
    return CursorTrailState();
  }

  void updateCursorPosition(Offset position) {
    state = CursorTrailState(offset: position);
  }
}

final cursorProvider = NotifierProvider<CursorProvider, CursorTrailState>(
  CursorProvider.new,
);
