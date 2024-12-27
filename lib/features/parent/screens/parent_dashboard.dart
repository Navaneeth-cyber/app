import 'package:flutter/material.dart';
import '../../../core/widgets/dashboard_card.dart';

class ParentDashboard extends StatelessWidget {
  const ParentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Dashboard'),
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
            title: 'Attendance',
            icon: Icons.calendar_today,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Fees',
            icon: Icons.payment,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Events',
            icon: Icons.event,
            onTap: () {},
          ),
          DashboardCard(
            title: 'Performance',
            icon: Icons.trending_up,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
