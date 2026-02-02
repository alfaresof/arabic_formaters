
extension Numbers on int {


String formatNumbers() {
  switch (this) {
    case 0:
      return '';
    case < 1000:
      return '$this';
    case < 1000000:
      return '$thisألف';
    default:
      return '$thisم';
  }
}
}