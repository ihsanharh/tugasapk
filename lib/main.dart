import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'navigation/navigation.dart';
import 'theme.dart';

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
      theme: ttheme.light,
      darkTheme: ttheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}