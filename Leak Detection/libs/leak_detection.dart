import 'dart:developer';

class LeakDetection {
  static final Set<Object> _trackedObjects = {};

  static void track(Object object) {
