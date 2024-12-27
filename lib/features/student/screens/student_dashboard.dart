import 'package:flutter/material.dart';
import '../../../core/widgets/dashboard_card.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
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
            title: 'Marks',
            icon: Icons.assessment,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Help',
            icon: Icons.help,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Voting',
            icon: Icons.how_to_vote,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Feedback',
            icon: Icons.feedback,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Question Papers',
            icon: Icons.library_books,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Achievements',
            icon: Icons.emoji_events,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}