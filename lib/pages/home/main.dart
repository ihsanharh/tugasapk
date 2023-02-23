import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
	const Home({super.key});
	
	@override
	State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
	@override
	Widget build(BuildContext context) {
		var screen_size = MediaQuery.of(context).size;
		DateTime now = DateTime.now();
		
		return Scaffold(
			body: Stack(
				children: <Widget>[
					Container(
						height: screen_size.height * .45,
						decoration: BoxDecoration(
							color: Colors.lightBlue,
							image: DecorationImage(
								alignment: Alignment.centerLeft,
								image: Image.asset(
									"assets/images/cloud.png",
									color: Colors.lightBlue,
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
									Text(
										"Selamat Sore, Ihsan!",
										style: const TextStyle(fontWeight: FontWeight.bold),
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