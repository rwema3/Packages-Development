import 'dart:developer';

class LeakDetection {
  static final Set<Object> _trackedObjects = {};

  static void track(Object object) {
    _trackedObjects.add(object);
  }

  static void untrack(Object object) {
    _trackedObjects.remove(object);
  }

  static void checkForLeaks() {
    if (_trackedObjects.isNotEmpty) {
      log('Memory leak detected: $_trackedObjects');
    }
  }
}
