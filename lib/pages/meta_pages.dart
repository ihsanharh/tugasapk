import 'package:flutter/material.dart';
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
		"ic": Icons.home_rounded,
	},
	{
		"i": 1,
		"ic": Icons.calendar_month,
	},
	{
		"i": 2,
		"ic": Icons.settings,
	},
];