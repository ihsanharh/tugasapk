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
					Header(size: screen_size, message: time_now['pesan'], color: time_now['accent_color'], cloud: time_now['cloud_color'])
				]
			),
		);
	}
}