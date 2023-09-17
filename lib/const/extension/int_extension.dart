extension NumExtension on num {
  String limitThousand() {
    if (this >= 1000) {
      return '+999';
    } else {
      return toString();
    }
  }
}