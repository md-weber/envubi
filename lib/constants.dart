abstract class Spacings {
  static const xtraSmall = 4.0;
  static const small = 8.0;
  static const medium = 16.0;
  static const large = 24.0;
  static const xtraLarge = 32.0;
}

abstract class Timings {
  static const fast = Duration(milliseconds: 250);
  static const medium = Duration(milliseconds: 500);
  static const slow = Duration(milliseconds: 750);
  static const verySlow = Duration(milliseconds: 1000);
}
