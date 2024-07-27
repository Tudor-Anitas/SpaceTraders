extension StringExtension on String {
  String get name {
    return contains('_') ? replaceAll('_', ' ') : this;
  }
}
