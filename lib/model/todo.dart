import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String subtitle;
  final Icon icon;
  final bool hasicon;
  Todo(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.hasicon});
}

var listofTodo = [
  Todo(
      title: "Exercise",
      subtitle: "Morning 4:00 AM to 5:00 AM",
      hasicon: true,
      icon: const Icon(Icons.health_and_safety)),
  Todo(
      title: "Medidate",
      subtitle: "Morning 5:00 AM to 6:00 AM",
      hasicon: false,
      icon: const Icon(Icons.health_and_safety)),
  Todo(
      title: "College",
      subtitle: "Morning 6:00 AM to 10:45 AM",
      hasicon: true,
      icon: const Icon(Icons.school)),
  Todo(
      title: "Online Class",
      subtitle: "Evening 5:00 PM to 7:00 PM",
      hasicon: true,
      icon: const Icon(Icons.e_mobiledata_rounded)),
];
