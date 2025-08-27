import 'package:flutter/material.dart';
import 'package:menu_ui/views/mobile/search/search_screen.dart';
import 'package:menu_ui/views/mobile/menu/menu_screen.dart';

import '../../utils/app_colors.dart';
import 'account/account_screen.dart';
import 'cart/cart_screen.dart';

class HomeBottomNavigationScreen extends StatefulWidget {
   const HomeBottomNavigationScreen({super.key});

  @override
   _HomeBottomNavigationScreenState createState() => _HomeBottomNavigationScreenState();
}

class _HomeBottomNavigationScreenState extends State<HomeBottomNavigationScreen> {
  final List<Widget> _children = [
    const MenuScreen(),
    const SearchScreen(),
    const CartScreen(),
    AccountScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 8.0);
    return Scaffold(
      extendBody: true,
      body: _children[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 50.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: darkGreen,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedIndex,
          selectedLabelStyle: labelTextStyle,
          unselectedLabelStyle: labelTextStyle,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'SWIGGY',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'SEARCH',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'CART',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'ACCOUNT',
            ),
          ],
        ),
      ),
    );
  }
}
