import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
	const Header({ required this.size, required this.message, required this.color });
	
	final Size size;
	final String message;
	final Color color;
	
	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(bottom: 20.0 * 2.5),
			// It will cover 20% of our total height
			height: size.height * 0.3,
			child: Stack(
				children: <Widget>[
					Container(
						padding: EdgeInsets.only(
							left: 20.0,
							right: 20.0,
							bottom: 36 + 20.0,
						),
						height: size.height * 0.2 - 27,
						decoration: BoxDecoration(
							color: color,
							image: DecorationImage(
								alignment: Alignment.centerLeft,
								image: Image.asset(
									"assets/images/cloud.png",
									color: time_now["cloud_color"],
								).image,
							),
							borderRadius: BorderRadius.only(
								bottomLeft: Radius.circular(36),
								bottomRight: Radius.circular(36),
							),
						),
					),
					SafeArea(
						child: Column(
							child: Row(
								children: <Widget>[
									SizedBox(
										height: size.height * 0.05,
									),
									Text(
										message,
										style: GoogleFonts.acme(
											textStyle: Theme.of(context).textTheme.headline5?.copyWith(
												fontWeight: FontWeight.bold
											),
										),
									),
								],
							)
						),
					),
				],
			),
		);
	}
}