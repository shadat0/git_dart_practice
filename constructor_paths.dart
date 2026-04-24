class Point {
  double x, y;

  Point(this.x, this.y);
  Point.origin() //named constructor
      : x = 0,
        y = 0;
  Point.onx(double val) //named constructor
      : x = val,
        y = 0;
}

class Write {
  double? a, b;
  //no constructor here
}

void main() {
//no constructor write
  var write = Write();
  print(write.a);
  write.a = 5;
  print(write.a);

  //paths
  Point p1 = Point(2, 3);
  print("p1: ${p1.x}, ${p1.y}");
  Point p2 = Point.origin();
  print("p2: ${p2.x}, ${p2.y}");
  Point p3 = Point.onx(5);
  print("p3: ${p3.x}, ${p3.y}");
}
