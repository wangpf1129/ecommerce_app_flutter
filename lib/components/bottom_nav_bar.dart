import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final Function(int) onTabChange;
  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      tabMargin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      color: Colors.grey[400],
      activeColor: Colors.grey.shade700,
      tabActiveBorder: Border.all(color: Colors.white, width: 1),
      tabBackgroundColor: Colors.grey.shade100,
      mainAxisAlignment: MainAxisAlignment.center,
      tabBorderRadius: 16,
      onTabChange: (value) => onTabChange(value),
      tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: 'Cart',
        ),
      ],
    );
  }
}
