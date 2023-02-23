import 'package:flutter/material.dart';
import './pages/navigation.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tugas pr',
      theme: ThemeData.light(),
      themeMode: ThemeMode.system,
      home: const MainNavigation(),
    );
  }
}