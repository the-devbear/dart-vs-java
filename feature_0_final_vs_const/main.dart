class Point {
  static const X_ORIGIN = 0;
  static const Y_ORIGIN = 0;
  final int x;
  final int y;

  const Point(this.x, this.y);

  const Point.origin()
      : x = Point.X_ORIGIN,
        y = Point.Y_ORIGIN;
}

void main(List<String> args) {
  Point p = Point(2, 2);
  const p2 = Point(2, 2);
  const p3 = Point(2, 2);
  final p4 = const Point(2, 2);

  print('p == p2: ${p == p2}');
  print('identical(p2, p3): ${identical(p2, p3)}');
  print('identical(p2, p4): ${identical(p2, p4)}');
}
