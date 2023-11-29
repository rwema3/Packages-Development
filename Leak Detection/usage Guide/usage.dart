import 'package:leak_detection_package/leak_detection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Track an object
    LeakDetection.track(MyObject());

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Memory Leak Detection Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Untrack the object when it's no longer needed
              LeakDetection.untrack(MyObject());
            },
