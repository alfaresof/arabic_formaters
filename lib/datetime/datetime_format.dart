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
      case 3600:
        return 'ساعة واحدة';
      case 7200:
        return 'ساعتين';
      case < 86400:
        return '${def.inHours} ساعة';
      case 86400:
        return 'يوم واحد';
      case 172800:
        return 'يومين';
      case < 950400:
        return '${def.inDays} أيام';
      case < 2592000:
        return '${def.inDays} يوم';
      case 2592000:
        return 'شهر';
      case 5184000:
        return 'شهرين';
      case < 28512000:
        return '${def.inDays} أشهر';
      case < 31104000:
        return '${def.inDays} شهرًا';
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
