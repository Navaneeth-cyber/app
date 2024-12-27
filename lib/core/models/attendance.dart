class Attendance {
  final String id;
  final String studentId;
  final DateTime date;
  final bool present;

  Attendance({
    required this.id,
    required this.studentId,
    required this.date,
    required this.present,
  });
}