import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'meta_pages.dart';

class MainNavigation extends StatefulWidget {
	const MainNavigation({super.key});
	
	@override
	State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
	int _activePageIndex = 0;
	final PageController _controller = PageController(initialPage: 0);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			resizeToAvoidBottomInset: false,
			body: PageView(
				controller: _controller,
				onPageChanged: (index) {
					setState(() {
						_activePageIndex = index;
					});
				},
				children: pages,
			),
			bottomNavigationBar: CurvedNavigationBar(
      	items: pages_icon,
      	index: _activePageIndex,
      	color: Colors.grey.shade200,
      	backgroundColor: Colors.transparent,
      	onTap: (index) {
    			_controller.animateToPage(
    				index,
    				duration: Duration(milliseconds: 100),
    				curve: Curves.ease,
    			);
    		},
      	animationDuration: Duration(milliseconds: 100),
  		),
		);
	}
}