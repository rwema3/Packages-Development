void main() {
  runApp(MyApp());

  // Check for leaks when the application is closing
  WidgetsBinding.instance!.addPostFrameCallback((_) {
    LeakDetection.checkForLeaks();
  });
}
