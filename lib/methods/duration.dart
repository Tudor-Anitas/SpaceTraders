import 'package:intl/intl.dart';

extension TimeDuration on int {
  Duration get ms {
    return Duration(milliseconds: this);
  }

  Duration get sec {
    return Duration(seconds: this);
  }
}

extension TimeShow on Duration {
  String get showTime {
    if (inHours > 0) {
      return '${inMinutes % 60}h:${inSeconds % 60}m:${inSeconds}s';
    } else if (inMinutes > 0) {
      return '${inMinutes % 60}m:${inSeconds % 60}s';
    } else {
      return '${inSeconds % 60}s';
    }
  }

  Duration difference(Duration other) {
    return Duration(
        seconds: (inSeconds - other.inSeconds) > 0
            ? (inSeconds - other.inSeconds)
            : 0);
  }
}

String formatDate(DateTime time) {
  DateFormat format = DateFormat('HH:mm, dd.MM.yyyy');
  var a= format.format(time).toString();
  return a;
}
