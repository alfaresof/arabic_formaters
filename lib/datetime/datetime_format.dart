import 'package:intl/intl.dart';

extension Dates on DateTime {

  /// This for showing time like :
  /// ```٣٠ يوم``` , ```١٠ دقائق```
  String showRecentTimeInArabic() {
    final def = DateTime.now().difference(this);
    switch (def.inSeconds) {
      case 0:
        return '0';
      case 1:
        return 'ثانية واحدة';
      case 2:
        return 'ثانيتان';
      case < 60:
        return '${def.inSeconds} ثواني';
      case < 3600:
        return '${def.inMinutes} دقائق';
      case < 86400:
        return '${def.inHours} ساعة';
      case < 604800:
        return '${def.inDays} يوم';
      case < 18144000:
        return '${def.inDays} شهر';
      default:
        return '${DateFormat.yMd().format(this)}';
    }
  }

  /// This to check if datetime is new, and this check if datetime less than 7 or ```days``` parameter you passed.
  bool isNewDate({int? days}) {
    final def = DateTime.now().difference(this);
    return def.inDays <= (days ?? 7);
  }
}