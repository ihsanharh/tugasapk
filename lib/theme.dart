import 'package:flutter/material.dart';
import 'package:tugasapk/constants.dart';

ThemeData lightThemeData(BuildContext context) {
	return ThemeData.light().copyWith(
		primaryColor: kPrimaryColor,
		scaffoldBackgroundColor: Colors.grey.shade100,
		bottomNavigationBarTheme: BottomNavigationBarThemeData(
			backgroundColor: Colors.grey.shade100,
		),
	);
}

ThemeData darkThemeData(BuildContext context) {
	return ThemeData.dark().copyWith(
		primaryColor: kPrimaryColor,
		scaffoldBackgroundColor: Colors.grey.shade900,
		bottomNavigationBarTheme: BottomNavigationBarThemeData(
			backgroundColor: Colors.grey.shade900,
		),
	);
}