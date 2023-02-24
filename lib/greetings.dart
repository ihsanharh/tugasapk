import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Map<String, dynamic> time_preference(String nama) {
	final List<Map<String, dynamic>> daftar_pesan = [
		{
			"pesan": "Selamat Malam, $nama!",
			"cloud_color": Colors.white,
			"accent_color": Colors.indigo.shade900,
		},
		{
			"pesan": "Selamat Pagi, $nama!",
			"cloud_color": Colors.black,
			"accent_color": Colors.yellow.shade300,
		},
		{
			"pesan": "Selamat Siang, $nama!",
			"cloud_color": Colors.deepPurpleAccent.shade700,
			"accent_color": Colors.lightBlue.shade300,
		},
		{
			"pesan": "Selamat Sore, $nama!",
			"cloud_color": Colors.deepPurpleAccent.shade700,
			"accent_color": Colors.amber,
		},
	];
	List<List<int>> time = [
		[98, 19, 20, 21, 22, 23, 0, 1, 2, 3, 4, 5],
		[99, 6, 7, 8, 9, 10],
		[100, 11, 12, 13, 14],
		[101, 15, 16, 17, 18],
	];
	DateTime now = DateTime.now();
	int o = 0;
	
	for (int i = 0; i < time.length; i++) {
		var filtered_hour = time[i].where((e) => e == now.hour);
		
		if (filtered_hour.length >= 1) {
			o = time[i][0] - 98;
			break;
		}
	}
	
	return daftar_pesan[o];
}