/// Formats a [DateTime] object into a string with the format `dd/MM/yyyy`.
///
/// If the provided [date] is `null`, an empty string is returned.
///
/// Example usage:
/// ```dart
/// DateTime now = DateTime.now();
/// String formattedDate = formatDate(now); // "18/11/2024"
/// ```
///
/// - The day and month are always formatted as two digits (e.g., "01" for January).
/// - The year is displayed as a four-digit number (e.g., "2024").
String formatDate(DateTime? date) {
  // If the provided date is null, return an empty string.
  if (date == null) return '';

  // Format the day and month to ensure two digits (e.g., "01" instead of "1").
  final day = (date.day < 10) ? '0${date.day}' : '${date.day}';
  final month = (date.month < 10) ? '0${date.month}' : '${date.month}';

  // The year is directly accessed.
  final year = date.year;

  // Return the formatted date in the 'dd/MM/yyyy' format.
  return '$day/$month/$year';
}
