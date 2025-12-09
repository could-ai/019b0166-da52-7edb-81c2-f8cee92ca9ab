import 'package:flutter/material.dart';
import 'package:couldai_user_app/theme/app_theme.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/screens/voice_message_screen.dart';
import 'package:couldai_user_app/screens/content_library_screen.dart';
import 'package:couldai_user_app/screens/routine_screen.dart';
import 'package:couldai_user_app/screens/settings_screen.dart';

void main() {
  runApp(const SmartToyApp());
}

class SmartToyApp extends StatelessWidget {
  const SmartToyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Toy Companion',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/voice-messages': (context) => const VoiceMessageScreen(),
        '/content-library': (context) => const ContentLibraryScreen(),
        '/routines': (context) => const RoutineScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
