import 'package:leak_detection_package/leak_detection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Track an object
    LeakDetection.track(MyObject());
