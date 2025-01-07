import 'package:get/get.dart';
import 'package:krishimart/consts/consts.dart';
import 'package:krishimart/controller/homecontroller.dart';
import 'package:krishimart/view/cart/cart.dart';
import 'package:krishimart/view/category/categoryScreen.dart';
import 'package:krishimart/view/home_screen/home_screen.dart';
import 'package:krishimart/view/profile/profile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: "Home"),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: "Categories"),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: "Cart"),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: "Profile")
    ];

    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      Cart(),
      Profile()
    ];

    return Scaffold(
      body: Column(children: [
        Obx(() => Expanded(
            child: navBody.elementAt(controller.currentNavIndex.value))),
      ]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: Colors.green,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}