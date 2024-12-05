// Asynchronous programming in Dart allows you to execute non-blocking operations, which is crucial for handling tasks such as network requests, file I/O, and other operations that may take time to complete.

Future<String> fetchUserData() async {
  // Simulate a delay
  await Future.delayed(Duration(seconds: 6));
  // return user data after the delay.

  return 'User data retrieved successfully.';
}

Future<void> main() async {
  print('Fetching user data ...');

  // call fetchUserData() and wait for its completion.
  String result = await fetchUserData();

  // print the result once fetchUserData() completes.
  print(result);
}
