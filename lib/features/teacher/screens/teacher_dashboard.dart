import 'package:flutter/material.dart';
import '../../../core/widgets/dashboard_card.dart';

class TeacherDashboard extends StatelessWidget {
  const TeacherDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // TODO: Navigate to profile
            },
          ),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          DashboardCard(
            title: 'Student Rankings',
            icon: Icons.leaderboard,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Announcements',
            icon: Icons.announcement,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Database',
            icon: Icons.storage,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Attendance',
            icon: Icons.fact_check,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}