// Created by Muhammed Tolkinov on 14-October-2022
import 'package:flutter/material.dart';

abstract class BaseColors {
  const BaseColors();

  Color get primary => const Color.fromRGBO(255, 165, 1, 1);
  Color get secondary => const Color.fromRGBO(255, 165, 1, 1);
  Color get white => const Color.fromRGBO(255, 255, 255, 1);
  Color get black => const Color.fromRGBO(0, 0, 0, 1);
  Color get stroke => const Color.fromRGBO(50, 58, 70, 1);
  Color get hint => const Color.fromARGB(255, 100, 93, 93);
  Color get grey => const Color.fromRGBO(211, 211, 211, 1);
  Color get grey100 => const Color.fromRGBO(239, 239, 240, 1);
  Color get information => const Color.fromRGBO(55, 135, 255, 1);
  Color get yellow => const Color.fromRGBO(255, 255, 0, 1);
  Color get green => const Color.fromRGBO(84, 191, 20, 1);
  Color get red => const Color.fromARGB(255, 214, 75, 10);
  Color get red900 => const Color.fromRGBO(233, 57, 64, 1);
  Color get text900 => const Color.fromRGBO(0, 0, 0, 1);
  Color get text800 => const Color.fromRGBO(54, 69, 79, 1);
  Color get text700 => const Color.fromRGBO(51, 51, 51, 1);

  Color get background;
}
