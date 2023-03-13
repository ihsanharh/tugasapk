import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'navigation/navigation.dart';
import 'Theme.dart';

void main() {
	SystemChrome.setSystemUIOverlayStyle(
		const SystemUiOverlayStyle(
			systemNavigationBarColor: Colors.transparent,
		),
	);
	
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Navigation(),
      theme: TThemes.light,
      darkTheme: TThemes.dark,
      themeMode: ThemeMode.system,
    );
  }
}yApp