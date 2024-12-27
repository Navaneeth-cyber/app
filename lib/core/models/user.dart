class User {
  final String id;
  final String name;
  final String role;
  final String? email;
  final String? phoneNumber;
  final String? department;

  User({
    required this.id,
    required this.name,
    required this.role,
    this.email,
    this.phoneNumber,
    this.department,
  });
}