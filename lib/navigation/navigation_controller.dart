import 'package:get/state_manager.dart';

class NavigationController extends GetxController {
	int currentIndex = 0.obs;
	
	void changePage(int pageIndex) {
		currentIndex = pageIndex;
	}
}