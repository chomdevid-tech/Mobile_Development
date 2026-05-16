// class MyDuration {
//   final int _milliseconds;

//   MyDuration(this._milliseconds) {
//     if (_milliseconds < 0) {
//       print("Duration cant be negative");
//     }
//   }

//   MyDuration.fromHours(int hour) : _milliseconds = hour * 60 * 60 * 1000 {
//     if (hour < 0) {
//       print("Hours cannot be negative");
//     }
//   }

//   MyDuration.fromMinutes(int min) : _milliseconds = min * 60 * 1000 {
//     if (min < 0) {
//       print("Min cant be negative");
//     }
//   }

//   MyDuration.fromSec(int sec) : _milliseconds = 60 * 1000 {
//     if (sec < 0) {
//       print("Sec cant be negative");
//     }
//   }

//   bool operator >(MyDuration other) {
//     return _milliseconds > other._milliseconds;
//   }

//   MyDuration operator +(MyDuration other) {
//     return MyDuration(_milliseconds + other._milliseconds);
//   }

//   MyDuration operator -(MyDuration other) {
//     int result = _milliseconds - other._milliseconds;

//     if (result < 0) {
//       print("Cannot have negative duration ");
//       result = 0;
//     }
//     return MyDuration(result);
//   }

//   //   // Display the duration in a readable format
//   @override
//   String toString() {
//     int seconds = (_milliseconds / 1000).round();
//     int minutes = (seconds / 60).floor();
//     seconds = seconds % 60;
//     int hours = (minutes / 60).floor();
//     minutes = minutes % 60;
//     return '$hours hours, $minutes minutes, $seconds seconds';
//   }
// }

// void main() {
//   MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
//   MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
//   print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
//   print(duration1 > duration2); //true

//   try {
//     print(duration2 - duration1); // This will throw an exception
//   } catch (e) {
//     print(e);
//   }
// }

