import 'package:intl/intl.dart';

abstract class NumberUtils {
  static NumberFormat numberFormat = NumberFormat();

  static String vnd(double? value) {
    if (value == null) return '-';
    return "${numberFormat.format(value)}";
  }

  static String intToVnd(int? value) {
    if (value == null) return '-';
    return "${numberFormat.format(value)}";
  }

  static String vndd(double? value) {
    if (value == null) return '-';
    if (value > 0) {
      return "+${numberFormat.format(value)}";
    } else {
      return "${numberFormat.format(value)}";
    }
  }

  static String feedbackPoint(double? value) {
    if (value == null) return '-';
    if (value > 0) {
      return value.toStringAsFixed(1);
    } else {
      return "-";
    }
  }

  static String distance(int value) {
    if (value < 1000) {
      return '$value m';
    }
    return '${(value / 1000).toString()} km';
  }
}
