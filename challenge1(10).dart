final numbers = ['3', '1E+8', '1.25', 'four', '-0.01', 'NaN', 'Infinity'];

void main() {
  for (var str in numbers) {
    try {
      final parsed = double.parse(str);
      print('Parsed: $parsed');
    } on FormatException {
      print('Can\'t parse "$str" as a double.');
    }
  }
}