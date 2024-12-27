import '../models/user.dart';

class MockDatabase {
  static final List<User> users = [
    // Students
    User(
      id: 'STU001',
      name: 'Navaneethan',
      role: 'student',
      email: 'navaneethan@college.edu',
      phoneNumber: '9876543210',
      department: 'Computer Science',
    ),
    User(
      id: 'STU002',
      name: 'Kaviya',
      role: 'student',
      email: 'kaviya@college.edu',
      phoneNumber: '9876543211',
      department: 'Computer Science',
    ),
    User(
      id: 'STU003',
      name: 'Nandhini',
      role: 'student',
      email: 'nandhini@college.edu',
      phoneNumber: '9876543212',
      department: 'Computer Science',
    ),
    User(
      id: 'STU004',
      name: 'Devaraj',
      role: 'student',
      email: 'devaraj@college.edu',
      phoneNumber: '9876543213',
      department: 'Computer Science',
    ),

    // Teacher
    User(
      id: 'TEA001',
      name: 'Saavitha',
      role: 'teacher',
      email: 'saavitha@college.edu',
      phoneNumber: '9876543214',
      department: 'Computer Science',
    ),

    // Parent
    User(
      id: 'PAR001',
      name: 'Prakash',
      role: 'parent',
      email: 'prakash@gmail.com',
      phoneNumber: '9876543215',
    ),
  ];

  static final Map<String, String> credentials = {
    'navaneethan': '1234',
    'kaviya': '1234',
    'nandhini': '1234',
    'devaraj': '1234',
    'saavitha': '1234',
    'prakash': '1234',
  };
}