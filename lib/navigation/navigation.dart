import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navigation_controller.dart';
import '../pages/meta_pages.dart';

class Navigation extends StatelessWidget {
	final NavigationController NavControl = Get.put(NavigationController());
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			resizeToAvoidBottomInset: false,
			body: IndexedStack(
				children: pages,
				index: NavControl.currentIndex,
			),
			bottomNavigationBar: CurvedNavigationBar(
      	items: pages_icon(NavControl.currentIndex),
      	index: NavControl.currentIndex,
      	color: Colors.grey.shade200,
      	backgroundColor: Colors.transparent,
      	onTap: (index) {
      		NavControl.changePage(index);
    		},
      	animationDuration: Duration(milliseconds: 100),
  		),
		);
	}
}