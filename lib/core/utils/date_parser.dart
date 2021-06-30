import 'package:intl/intl.dart';

class DateParser {
  static const String dateFormat = 'dd/MM/yyyy';

  static DateTime getDateTime(String date) {
    if (date != null) {
      return DateFormat(dateFormat).parse(date);
    } else {
      return null;
    }
  }

  static String getDateString(DateTime date) {
    return date != null ? DateFormat(dateFormat).format(date) : '';
  }
}
