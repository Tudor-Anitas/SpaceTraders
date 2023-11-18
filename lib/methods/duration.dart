extension TimeDuration on int {
  Duration get ms {
    return Duration(milliseconds: this);
  }

  Duration get sec {
    return Duration(seconds: this);
  }
}
