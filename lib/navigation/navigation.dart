import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navigation_controller.dart';
import '../pages/meta_pages.dart';

class Navigation extends StatelessWidget {
	final NavigationController NavControl = Get.put(NavigationController());
	
	@override
	Widget build(BuildContext context) {
		SystemChrome.setSystemUIOverlayStyle(
			const SystemUiOverlayStyle(
				systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor!,
			),
		);
		
		return Scaffold(
			resizeToAvoidBottomInset: false,
			extendBody: true,
			body: Obx(() => IndexedStack(
				children: pages,
				index: NavControl.currentIndex.value,
			)),
			floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Obx(() => CustomNavigationBar(
      	elevation: 10,
      	iconSize: 30,
      	isFloating: true,
      	borderRadius: Radius.circular(10),
      	currentIndex: NavControl.currentIndex.value,
      	selectedColor: Theme.of(context).colorScheme.primary!,
      	unSelectedColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor!,
      	backgroundColor: Theme.of(context).scaffoldBackgroundColor!,
      	strokeColor: Theme.of(context).colorScheme.primary!,
      	items: pages_icon.map(
      		(i) => CustomNavigationBarItem(
      			icon: (pages_icon.indexOf(i) == NavControl.currentIndex.value)? Icon(pages_icon_a[pages_icon.indexOf(i)]): Icon(i),
      		)
      	).toList(),
      	onTap: (index) {
      		NavControl.changePage(index);
      	},
      )),
		);
	}
}