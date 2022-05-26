import 'package:timeago/src/messages/lookupmessages.dart';
import 'package:timeago/timeago.dart' as timeago;

class Util {
  static String toReadableTime(DateTime time) {
    timeago.setLocaleMessages('id', timeago.IdMessages());
    return timeago.format(time, locale: 'id');
  }
}
