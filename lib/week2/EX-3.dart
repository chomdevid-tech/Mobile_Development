// class MyDuration {
//   final int _milliseconds;

//   MyDuration(this._milliseconds);

//   MyDuration.fromHours(int hour) : _milliseconds = hour * 60 * 60 * 1000;

//   MyDuration.fromMinutes(int min) :_milliseconds = min * 60 * 1000;
//   MyDuration.fromSec(int sec) : _milliseconds = sec * 1000;

//   @override
//   String toString() {
//     int seconds = (_milliseconds / 1000).floor();
//     int minutes = (seconds / 60).floor();
//     int hours = (minutes / 60).floor();

//     seconds = seconds % 60;

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
