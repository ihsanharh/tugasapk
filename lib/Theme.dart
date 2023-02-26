import 'package:flutter/material.dart';

class TThemes {
	static final light = ThemeData.light().copyWith(
		colorScheme: ColorScheme.light(),
		navigationBarTheme: NavigationBarThemeData(
			backgroundColor: Colors.grey.shade200
		),
	);
	
	static final dark = ThemeData.dark().copyWith(
		colorScheme: ColorScheme.dark(),
		navigationBarTheme: NavigationBarThemeData(
			backgroundColor: Colors.black
		),
	);
}