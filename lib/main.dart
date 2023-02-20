import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import './pages/navigation.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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