class IntStack {
  final List<int> _stack = [];

   
  void push(int value) {
    _stack.add(value);
  }

  
  int pop() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _stack.removeLast();
  }

  
  int peek() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _stack.last;
  }

  
  bool isEmpty() {
    return _stack.isEmpty;
  }

  
  @override
  String toString() {
    return 'Stack (top -> bottom): ${_stack.reversed.join(' -> ')}';
  }
}