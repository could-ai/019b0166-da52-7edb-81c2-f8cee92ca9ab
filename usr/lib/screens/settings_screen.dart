import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          _buildSectionHeader(context, 'Device'),
          _buildSettingTile(context, 'Wi-Fi Configuration', Icons.wifi, () {}),
          _buildSettingTile(context, 'Toy Volume', Icons.volume_up, () {}),
          _buildSettingTile(context, 'LED Brightness', Icons.brightness_6, () {}),
          
          const Divider(),
          _buildSectionHeader(context, 'Account'),
          _buildSettingTile(context, 'Parent Profile', Icons.person, () {}),
          _buildSettingTile(context, 'Child Profile', Icons.child_care, () {}),
          _buildSettingTile(context, 'Notifications', Icons.notifications, () {}),
          
          const Divider(),
          _buildSectionHeader(context, 'System'),
          _buildSettingTile(context, 'Firmware Update', Icons.system_update, () {}),
          _buildSettingTile(context, 'About', Icons.info_outline, () {}),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildSettingTile(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[600]),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }
}
