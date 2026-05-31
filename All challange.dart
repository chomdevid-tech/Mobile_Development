// class Point {
//   int x;
//   int y;
//   Point(this.x, this.y);
//   @override
//   String toString() {
//     return "x= $x y=$y";
//   }
//   void translate(int dx, int dy) {
//     x += dx;
//     y += dy;
//   }
//   void display() {
//     print("x: $x y: $y");
//   }
// }
// void main() {
//   Point p1 = Point(10, 11);
//    print(p1);

//   p1.translate(10, 10);
//    print(p1);

// }

// Challange 2
// class Point {
//   int x;
//   int y;
//   Point(this.x, this.y);
// }

// class Rectangle {
//   Point topLeft;
//   Point bottomRight;

//   Rectangle(this.topLeft, this.bottomRight);

//   int get width => bottomRight.x - topLeft.x;
//   int get height => topLeft.y - bottomRight.y;

//   int get area => width * height;
// }
// void main() {
//   Point p1 = Point(10, 11);
//   Point p2 = Point(12, 4);
//   Rectangle r1 = Rectangle(p1, p2);
//   print("Width: ${r1.width}");
//   print("Height: ${r1.height}");
//   print("Area: ${r1.area}");
// }

//Challange 3

// class Person {
//   String firstName;
//   String lastName;

//   Person(this.firstName, this.lastName);
//   String get fullName => this.firstName + " " + this.lastName;
// }
// void main() {
//   Person p1 = Person("Chom","Devid");
//   print(p1.fullName);
// }



/// Challange 5

// enum TravelClass { economy, busniness, firstClass }

// class Passenger {
//   final String name;
//   final String? address;

//   Passenger({required this.name, this.address});

//   void displayPassenger() {
//     print("Passenger Name: $name");
//     print("Passenger Address: $address");
//   }
// }

// class Destination {
//   String country;
//   String city;

//   Destination(this.country, this.city);
//   void displayDestination() {
//     print("Passenger Destination: $country");
//     print("Passenger City: $city");
//   }
// }

// class TravelTacket {
//   TravelClass travelClass;
//   String? discount;

//   TravelTacket(this.travelClass, this.discount);

//   void displayTravelTicket() {
//     print("Travel Class: $travelClass");

//     if (discount != null) {
//       print("Discount code: $discount");
//     } else {
//       print("No Discount Code");
//     }
//   }
// }

// void main() {
//   Passenger p1 = Passenger(name: "Devid", address: "PhnomPenh");
//   p1.displayPassenger();
//   Destination d1 = Destination("Japan", "Tokyo");
//   d1.displayDestination();

//   TravelTacket t1 = TravelTacket(TravelClass.busniness, "SAVE20");
//   t1.displayTravelTicket();
// }

/// Challange 6
// class Distance {
//   final double meters;

//   Distance.meters(this.meters);

//   Distance.kms(double kms) : meters = kms * 1000;
//   Distance.cms(double cms) : meters = cms / 100;

//   double get kms => meters / 1000;
//   double get cms => meters * 100;

//   Distance operator +(Distance other) {
//     return Distance.meters(meters + other.meters);
//   }
// }

// void main() {
//   Distance d1 = Distance.kms(3.4);
//   Distance d2 = Distance.meters(1000);

//   Distance total = d1 + d2;
//   print(total.kms);
//   print(total.meters);
//   print(total.cms);
// }
