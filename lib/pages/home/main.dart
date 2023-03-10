import 'package:flutter/material.dart';


import 'header.dart';
import '../../greetings.dart';

class Home extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		var screen_size = MediaQuery.of(context).size;
		var time_now = time_preference("ihsan");
		
		return SingleChildScrollView(
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					Header(size: screen_size, message: time_now['pesan'], color: time_now['accent_color'])
				]
			),
		)
		
		/*return Scaffold(
			body: Stack(
				children: <Widget>[
					Container(
						height: screen_size.height * .45,
						decoration: BoxDecoration(
							color: time_now["accent_color"],
							image: DecorationImage(
								alignment: Alignment.centerLeft,
								image: Image.asset(
									"assets/images/cloud.png",
									color: time_now["cloud_color"],
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
										time_now["pesan"],
										style: GoogleFonts.acme(
											textStyle: const TextStyle(
												fontWeight: FontWeight.w900,
												fontSize: 10
											),
										),
									),
								],
							),
						),
					),
				],
			),
		);*/
	}
}