import 'package:flutter/material.dart';

class TimelineStep {
  final String title;
  final IconData icon;
  final String contentText;
  final String imagePath;

  TimelineStep({
    required this.title,
    required this.icon,
    required this.contentText,
    required this.imagePath,
  });
}
