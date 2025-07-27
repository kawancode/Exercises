class InvalidPostalCode implements Exception {
  final String message;
  InvalidPostalCode(this.message);

  @override
  String toString() => 'InvalidPostalCode: $message';
}
void validatePostalCode(String code) {
  final regex = RegExp(r'^\d{5}$'); 
  if (!regex.hasMatch(code)) {
    throw InvalidPostalCode('Postal code must be exactly 5 digits.');
  }

  print('✅ Postal code is valid: $code');
}
void main() {
  final postalCodes = ['12345', '4567', 'abcde', '987654', '54321'];

  for (var code in postalCodes) {
    try {
      validatePostalCode(code);
    } on InvalidPostalCode catch (e) {
      print('$e');
    }
  }
}
