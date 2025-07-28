void main() async {
  try {
    Future<String> myFuture() =>
        Future.delayed(Duration(seconds: 2), () => 'I am from future...');
    final text = await myFuture();
    print(text);
  } catch (e) {
    print('!!!!!!!');
  } finally {
    print('This is my future exercise');
  }
}
