import 'package:date_format/date_format.dart';

const List<String> _DEFAULT_SHORT_DATE_FORMAT = [yyyy, '-', mm, '-', dd];

class DateUtils {
  static String format(DateTime date) {
    return formatDate(date, _DEFAULT_SHORT_DATE_FORMAT);
  }
}
