import 'package:flutter/material.dart';
import 'greetings.dart';

var time_now = time_preference();

class TThemes {
	static final light = ThemeData.light().copyWith(
		colorScheme: ColorScheme.light(),
		navigationBarTheme: NavigationBarThemeData(
			backgroundColor: Colors.grey.shade200,
			selectedItemColor: time_now['accent_color'],
		),
	);
	
	static final dark = ThemeData.dark().copyWith(
		colorScheme: ColorScheme.dark(),
		navigationBarTheme: NavigationBarThemeData(
			backgroundColor: Colors.grey.shade900,
			selectedItemColor: time_now['accent_color'],
		),
	);
}