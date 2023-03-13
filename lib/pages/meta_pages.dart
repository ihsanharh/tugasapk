import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import './home/main.dart';
import './jadwal/main.dart';
import './settings/main.dart';

List<Widget> pages = [
	Home(),
	Jadwal(),
	Settings(),
];

List<Map<String, dynamic>> pages_icon = [
	{
		"i": 0,
		"ic": Ionicons.home_outline,
	},
	{
		"i": 1,
		"ic": Icons.calendar_outline,
	},
	{
		"i": 2,
		"ic": Icons.settings_outline,
	},
];