import 'package:flutter/material.dart';

class ttheme {
	static final light = ThemeData.light().copyWith(
		colorScheme: ColorScheme.light(),
		bottomNavigationBarTheme: BottomNavigationBarThemeData(
			unselectedItemColor: Colors.grey.shade900,
		),
	);
	
	static final dark = ThemeData.dark().copyWith(
		colorScheme: ColorScheme.dark(),
		bottomNavigationBarTheme: BottomNavigationBarThemeData(
			unselectedItemColor: Colors.grey.shade300,
		),
	);
}