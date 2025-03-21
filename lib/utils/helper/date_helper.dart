import 'package:intl/intl.dart';

abstract class DateHelper {
  static String formatDateBydMMMYYYYWithDash(DateTime? dateTime) {
    if (dateTime == null) {
      return '';
    }
    return DateFormat("dd-MMM-yyyy").format(dateTime);
  }

  static final DateFormat appDateFormat = DateFormat("dd-MMM-yyyy");
  static final DateFormat appDateTimeFormat = DateFormat("dd-MMM-yyyy hh:mm a");
}
