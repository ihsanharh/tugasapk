import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import './home/main.dart';
import './jadwal/main.dart';
import './settings/main.dart';

List<Widget> pages = [
	Home(),
	Jadwal(),
	Settings(),
];

List<IconData> pages_icon = [
	Ionicons.home_outline,
	Ionicons.grid_outline,
	Ionicons.person_outline,
];