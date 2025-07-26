enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  Day operator -(int n) {
    final days = Day.values;
    final currentIndex = index;
    final newIndex = (currentIndex - n) % days.length;
    return days[(newIndex + days.length) % days.length];
  }

  String get displayName => name[0].toUpperCase() + name.substring(1);
}

void main() {
  Day today = Day.wednesday;

  print((today - 3).displayName);

  print(Day.friday.displayName);
  print(Day.monday.name);
  print(Day.monday.displayName);
}
