import 'package:flutter/material.dart';

class CursorTrailState {
  const CursorTrailState({this.offset = Offset.zero, this.size = defaultSize});

  static const Size defaultSize = Size(250, 250);

  final Offset offset;
  final Size size;
}
