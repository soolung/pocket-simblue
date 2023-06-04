class DateTimeFormatter {

  // 현재를 기준으로 ~시/분/초 후
  static after(DateTime date) {
    final now = DateTime.now();
    final diff = date.difference(now);

    if (diff.inSeconds < 30) return "방금";
    if (diff.inSeconds < 60) return "1분 후";
    if (diff.inMinutes < 60) return "${diff.inMinutes.floor()}분 후";
    if (diff.inHours < 24) return "${diff.inHours.floor()}시간 후";
    if (diff.inDays < 7) return "${diff.inDays.floor()}일 후";
    if (diff.inDays < 31) return "${(diff.inDays / 7).floor()}주 후";
    if (diff.inDays < 365) return "${(diff.inDays / 30).floor()}달 후";

    return "${diff.inDays / 365}년 후";
  }

// // 현재를 기준으로 ~시/분/초 전
// static before(DateTime date) {
//   final now = DateTime.now();
//   final dayDiff = now.difference(date).inDays;
//
//   if (dayDiff == 0) {}
// }
}
