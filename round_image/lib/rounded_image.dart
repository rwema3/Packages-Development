import 'dart:ui' as ui;
import 'package:flutter/material.dart';
/// A function that rounds the corners of an image.
Widget roundImage(String imagePath, double radius) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius),
 