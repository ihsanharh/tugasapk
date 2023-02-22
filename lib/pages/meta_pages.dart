import 'package:flutter/material.dart';
import './home/main.dart';
import './jadwal/main.dart';
import './settings/main.dart';

List<Widget> pages = [
	Home(),
	Jadwal(),
	Settings(),
];

List<Widget> pages_icon = [
	Icon(Icons.home_rounded, size: 30),
	Icon(Icons.calendar_month, size: 30),
	Icon(Icons.settings, size: 30),
];