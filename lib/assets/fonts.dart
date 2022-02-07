import 'package:flutter/material.dart';

class Fonts {
  static const TextStyle _base = TextStyle(fontFamily: "Montserrat");

  static final size30 = _base.copyWith(fontSize: 30);
  static final size30White = size30.copyWith(color: Colors.white);
  static final size30WhiteMedium = size30White.copyWith(fontWeight: FontWeight.w500);
}
