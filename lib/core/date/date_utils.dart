String formatDate(DateTime? date) {
  if(date == null) return '';
  final day = (date.day < 10) ? '0${date.day}' : '${date.day}';
  final month = (date.month < 10) ? '0${date.month}' : '${date.month}';
  final year = date.year;
  return '$day/$month/$year';
}