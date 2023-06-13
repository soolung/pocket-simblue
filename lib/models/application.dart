import 'dart:ffi';

class Application {

  int id;
  String title;
  String emoji;
  String description;
  String status;
  DateTime startDate;
  DateTime endDate;
  bool allowsDuplication;

  Application({
    required this.id,
    required this.title,
    required this.description,
    required this.emoji,
    required this.status,
    required this.startDate,
    required this.endDate,
    required this.allowsDuplication,
  });

  factory Application.fromJson(Map<String, dynamic> json) {
    return Application(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      emoji: json['emoji'],
      status: json['status'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
      allowsDuplication: json['allowsDuplication'],
    );
  }
}