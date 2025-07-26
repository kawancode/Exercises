extension TimeExtensions on int {
  Duration get seconds => Duration(seconds: this);
  Duration get minutes => Duration(minutes: this);
  Duration get hours => Duration(hours: this);
  Duration get days => Duration(days: this);
}
void main() {
  final timeRemaining = 3.minutes;
  final timeout = 10.seconds;
  final nap = 1.hours;

  print(timeRemaining); 
  print(timeout);       
  print(nap);  
}        