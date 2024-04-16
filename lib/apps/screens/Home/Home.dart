import 'package:emart_ecommerce_app_baba_devs/apps/Controller/homeController.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/CartScreen/CartScreen.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/CategoryScreen/CategoryScreen.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/HomeScreen/HomeScreen.dart';
import 'package:emart_ecommerce_app_baba_devs/apps/screens/Home/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(homeController());

    var navBarItems = [
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined,size: 22,color: Colors.grey),
          label: "Home",
          activeIcon: Icon(Icons.home_rounded,size: 22,color: Colors.deepPurple,)
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined,size: 22,color: Colors.grey),
          label: "Category",
          activeIcon: Icon(Icons.category_rounded,size: 22,color: Colors.deepPurple,)
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined,size: 22,color: Colors.grey),
          label: "Cart",
          activeIcon: Icon(Icons.shopping_cart,size: 22,color: Colors.deepPurple,)
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded,size: 22,color: Colors.grey),
          label: "Profile",
          activeIcon: Icon(Icons.person,size: 22,color: Colors.deepPurple,)
      ),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx( ()=>
           BottomNavigationBar(
           items: navBarItems,
           currentIndex: controller.currentNavIndex.value,
           onTap: (value) {
             controller.currentNavIndex.value = value;
           },
           type: BottomNavigationBarType.fixed,
           backgroundColor: Colors.grey[200],
           selectedItemColor: Colors.deepPurple,
           selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
        ),
      ),
    );
  }
}
