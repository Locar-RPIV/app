import 'package:intl/intl.dart';

class DateParser {
  static const String dateFormat = 'dd/MM/yyyy';

  static DateTime getDateTime(String date) {
    return date != null ? DateFormat(dateFormat).parse(date) : date;
  }

  static String getDateString(DateTime date) {
    return date != null ? DateFormat(dateFormat).format(date) : '';
  }
}
