mixin Adder {
  void sum(int number1, number2) => print(number1 + number2);
}

class Calculator with Adder{}

void main() {
  var calc = Calculator();
  calc.sum(10,15);
  
}
