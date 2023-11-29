import 'dart:developer';

class LeakDetection {
  static final Set<Object> _trackedObjects = {};

  static void track(Object object) {
    _trackedObjects.add(object);
  }

  static void untrack(Object object) {
