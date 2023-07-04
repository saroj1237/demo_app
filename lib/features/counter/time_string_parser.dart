/// Returns [Duration] for a valid time string
Duration? parseTimeString(String timeString) {
  try {
    List<String> parts = timeString.split(':');

    int hours = 0;
    int minutes = 0;
    int seconds = 0;

    if (parts.length == 3) {
      hours = int.parse(parts[0].toLowerCase().replaceAll('h', ''));
      minutes = int.parse(parts[1].toLowerCase().replaceAll('m', ''));
      seconds = int.parse(parts[2].toLowerCase().replaceAll('s', ''));
    } else if (parts.length == 2) {
      minutes = int.parse(parts[0].toLowerCase().replaceAll('m', ''));
      seconds = int.parse(parts[1].toLowerCase().replaceAll('s', ''));
    } else {
      throw const FormatException('Invalid time format');
    }

    return Duration(hours: hours, minutes: minutes, seconds: seconds);
  } catch (e) {
    return null;
  }
}
