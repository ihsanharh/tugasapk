//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
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
			extendBody: true,
			body: Obx(() => IndexedStack(
				children: pages,
				index: NavControl.currentIndex.value,
			)),
			/*bottomNavigationBar: Obx(() => CurvedNavigationBar(
      	items: pages_icon.map(
      		(i) => Icon(
      			i['ic'],
      			size: 30,
      			color: i['i'] == NavControl.currentIndex.value ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor! : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor!,
      		)
      	).toList(),
      	index: NavControl.currentIndex.value,
      	color: Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
      	backgroundColor: Colors.transparent,
      	onTap: (index) {
      		NavControl.changePage(index);
    		},
      	animationDuration: Duration(milliseconds: 100),
      )),*/
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AnimatedBottomBar(
      	currentIcon: NavControl.currentIndex.value,
      	onTap: (index) {
      		NavControl.changePage(index);
      	},
      	icons: pages_icon,
      ),
      bottomNavigationBar: Obx(() => CustomNavigationBar(
      	elevation: 10,
      	iconSize: 30,
      	isFloating: true,
      	borderRadius: Radius.circular(20.0),
      	selectedColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor!,
      	unSelectedColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor!,
      	currentIndex: NavControl.currentIndex.value,
      	backgroundColor: Theme.of(context).bottomNavigationBarTheme.transparent,
      	strokeColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor!,
      	items: pages_icon.map(
      		(i) => CustomNavigationBarItem(
      			icon: Icon(i['ic']),
      		)
      	).toList(),
      	onTap: (index) {
      		NavControl.changePage(index);
      	},
      )),
		);
	}
}