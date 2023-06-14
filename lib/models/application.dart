class Application {
  int id;
  String title;
  String emoji;
  String description;
  String status;
  bool allowsDuplication;
  DateTime? startDate;
  DateTime? endDate;

  Application({
    required this.id,
    required this.title,
    required this.description,
    required this.emoji,
    required this.status,
    required this.allowsDuplication,
    this.startDate,
    this.endDate,
  });

  factory Application.fromJson(Map<String, dynamic> json) {
    String status = json['status'];
    return Application(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      emoji: json['emoji'],
      status: status,
      startDate: status == "ALWAYS" ? null : DateTime.parse(json['startDate']),
      endDate: status == "ALWAYS" ? null : DateTime.parse(json['endDate']),
      allowsDuplication: json['allowsDuplication'],
    );
  }
}
