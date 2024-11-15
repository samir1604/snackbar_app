import 'package:intl/intl.dart';

///https://pub.dev/packages/intl

class AppFormatterUtils {
  AppFormatterUtils._();

  static String formatDate(DateTime? date, { String format = 'dd-MMM-yyyy' }) =>
      DateFormat(format).format(date ??= DateTime.now());

  static String formatCurrency(double amount) =>
      NumberFormat.currency(locale: 'es_ES', symbol: '\$').format(amount);

  static String formatPhoneNumber(String phoneNumber) => phoneNumber.length ==
      10
      ? '+(${phoneNumber.substring(0, 2)}) ${phoneNumber.substring(2, 4)}-${phoneNumber.substring(4)}'
      : '+(53) ${phoneNumber.substring(0, 2)}-${phoneNumber.substring(2)}';

  static String truncateText(String text, int maxLength) =>
      text.length <= maxLength ? text : '${text.substring(0, maxLength)}...';
}