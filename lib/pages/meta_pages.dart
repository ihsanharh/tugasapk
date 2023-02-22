import 'package:flutter/material.dart';
import './home/main.dart';
import './jadwal/main.dart';
import './settings/main.dart';

List<Widget> pages = [
	Home(),
	Jadwal(),
	Settings(),
];

List pages_icon(int ActiveIndex) {
	return <Widget>[
		Icon(Icons.home_rounded, size: 30, color: (0 == ActiveIndex) ? Colors.lightBlue : Colors.black ),
		Icon(Icons.calendar_month, size: 30, color: (1 == ActiveIndex) ? Colors.lightBlue : Colors.black),
		Icon(Icons.settings, size: 30, color: (2 == ActiveIndex) ? Colors.lightBlue : Colors.black),
	];
}