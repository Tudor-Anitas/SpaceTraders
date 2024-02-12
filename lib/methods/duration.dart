import 'package:intl/intl.dart';

extension TimeDuration on int {
  Duration get ms {
    return Duration(milliseconds: this);
  }

  Duration get sec {
    return Duration(seconds: this);
  }
}

String formatDate(DateTime time) {
  DateFormat format = DateFormat('HH:mm, dd:MM:yyyy');
  return format.format(time).toString();
}
