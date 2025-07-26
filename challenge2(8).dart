class Stack<T> {
  final List<T> _stack = [];

  void push(T value) {
    _stack.add(value);
  }

  T pop() {
    if (isEmpty()) {
      throw Exception();
    }
    return _stack.removeLast();
  }

  T peek() {
    if (isEmpty()) {
      throw Exception();
    }
    return _stack.last;
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }

  @override
  String toString() {
    return '${_stack.reversed.join(' -> ')}';
  }
}
