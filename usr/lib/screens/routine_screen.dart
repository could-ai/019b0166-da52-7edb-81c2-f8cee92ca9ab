import 'package:flutter/material.dart';

class RoutineScreen extends StatelessWidget {
  const RoutineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Routines & Reminders')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSectionHeader(context, 'Daily Routines'),
          _buildRoutineCard(context, 'Wake Up', '7:00 AM', true),
          _buildRoutineCard(context, 'Brush Teeth', '8:00 AM', true),
          _buildRoutineCard(context, 'Bedtime Story', '8:30 PM', false),
          
          const SizedBox(height: 24),
          _buildSectionHeader(context, 'One-time Reminders'),
          _buildRoutineCard(context, 'Clean up toys', 'Today, 5:00 PM', true),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget _buildRoutineCard(BuildContext context, String title, String time, bool isActive) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: SwitchListTile(
        value: isActive,
        onChanged: (val) {},
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(time),
        secondary: Icon(
          Icons.alarm,
          color: isActive ? Theme.of(context).primaryColor : Colors.grey,
        ),
      ),
    );
  }
}
