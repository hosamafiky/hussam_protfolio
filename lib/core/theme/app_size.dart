class Insets {
  static const double small = 4.0;
  static const double medium = 12.0;
  static const double maxWidth = 1280.0;
}

abstract class AppInsets {
  double get padding;
  double get appBarHeight;
}

class SmallAppInsets implements AppInsets {
  @override
  double get padding => 16.0;

  @override
  double get appBarHeight => 56.0;
}

class LargeAppInsets implements AppInsets {
  @override
  double get padding => 80.0;

  @override
  double get appBarHeight => 64.0;
}
