import 'package:flutter/material.dart';

class Activity {
  final IconData iconData;
  final String type;
  final String dateTime;
  final String distance;

  Activity({
    required this.iconData,
    required this.type,
    required this.dateTime,
    required this.distance,
  });

  static List<Activity> getLastActivities() {
    List<Activity> lastActivities = [];

    lastActivities.addAll({
      Activity(
          iconData: Icons.run_circle_outlined,
          type: "Running",
          dateTime: "Ayer, 18:20",
          distance: "7,300 km"),
      Activity(
          iconData: Icons.run_circle_outlined,
          type: "Running",
          dateTime: "15 Oct 2022, 13:45",
          distance: "6,550 km"),
      Activity(
          iconData: Icons.run_circle_outlined,
          type: "Running",
          dateTime: "10 Oct 2022, 19:02",
          distance: "7,300 km"),
    });

    return lastActivities;
  }
}
