
import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'signup.dart';
import 'booking.dart';
import 'rideconfirm.dart';
import 'profile.dart';


class BNav extends StatefulWidget {
  const BNav({super.key});

  @override
  State<BNav> createState() => _BNavState();
}

class _BNavState extends State<BNav> {
  
  final _pageController = PageController(initialPage: 0);

  int maxCount = 4;

  /// widget list
   final List<Widget> bottomBarPages = [
    const SignUpPage(),
    const BookingPage(),
    const RideConfirmPage(),
    const ProfilePage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
         controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              
              pageController: _pageController,
              color: const Color(0xFF32B56F),
              showLabel: false,
              notchColor: const Color(0xFF32B56F),
              bottomBarItems: const [
                 BottomBarItem(
                  inActiveItem: Icon(
                    Icons.window,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.window,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 1',
                ),
                 BottomBarItem(
                  inActiveItem: Icon(
                    Icons.airplanemode_active_sharp,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.airplanemode_active_sharp,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 2',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.room_outlined,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.room_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 3',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 4',
                ),
              ],
              onTap: (index) {
                /// control your animation using page controller
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeIn,
                );
              },
            )
          : null,
    );
  }
}