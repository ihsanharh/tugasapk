import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../greetings.dart';

class Home extends StatefulWidget {
	const Home({super.key});
	
	@override
	State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
	@override
	Widget build(BuildContext context) {
		var screen_size = MediaQuery.of(context).size;
		var time_now = time_preference("ihsan");
		
		return Scaffold(
			body: Stack(
				children: <Widget>[
					Container(
						height: screen_size.height * .45,
						decoration: BoxDecoration(
							color: time_now.accent_color,
							image: DecorationImage(
								alignment: Alignment.centerLeft,
								image: Image.asset(
									"assets/images/cloud.png",
									color: time_now.cloud_color,
								).image,
							)
						),
					),
					SafeArea(
						child: Padding(
							padding: EdgeInsets.symmetric(horizontal: 20),
							child: Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: <Widget>[
									SizedBox(
										height: screen_size.height * 0.05,
									),
									Text(
										time_now.pesan,
										style: const TextStyle(fontWeight: FontWeight.w900),
									),
									Text(
										now.hour.toString()
									),
									Text(
										now.microsecondsSinceEpoch.toString()
									),
								],
							),
						),
					),
				],
			),
		);
	}
}