// ignore_for_file: unused_local_variable, prefer_interpolation_to_compose_strings

import 'package:easy_localization/easy_localization.dart';

class Helper {
  static String formatDate() {
    return DateFormat('dd.MM.yyyy').format(DateTime.now());
  }

  static String dateFormat(String date) {
    return DateFormat('dd.MM.yyyy').format(DateTime.parse(date));
  }

  static String toProcessCost(String value) {
    if (value == '0') {
      return '0';
    }

    String valueRealPart = '';
    String number = "";
    if (value.indexOf('.') > 0) {
      valueRealPart = value.substring(value.indexOf('.'), value.length);
      value = value.substring(0, value.indexOf('.'));
    }
    String count = '';
    if (value.length > 3) {
      int a = 0;
      for (int i = value.length; 0 < i; i--) {
        if (a % 3 == 0) {
          count = value.substring(i - 1, i) + ' ' + count;
        } else {
          count = value.substring(i - 1, i) + count;
        }
        a++;
      }
    } else {
      count = value;
    }

    if (value.length >= 7) {
      int coast = int.parse(value);
      String million = (coast / 1000000).toString();

      return '$million mln';
    }
    if (value.length >= 10) {
      int coast = int.parse(value);
      String milliard = (coast / 1000000000).toString();

      return '$milliard mlrd';
    }
    if (value.length >= 13) {
      int coast = int.parse(value);
      String trillion = (coast / 1000000000000).toString();

      return '$trillion trln';
    }

    return "$count so'm";
  }
}
