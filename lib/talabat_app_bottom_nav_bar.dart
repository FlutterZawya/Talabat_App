import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'core/utils/styles/app_images.dart';
import 'core/utils/styles/app_styles.dart';

PersistentTabController _controller = PersistentTabController();

class TalabatAppBottomNavBar extends StatelessWidget {
  const TalabatAppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _buildItems(context),
      backgroundColor: Colors.white,
      decoration: navBarDecorationMethod(),
      navBarStyle: NavBarStyle.style9,
    );
  }

  NavBarDecoration navBarDecorationMethod() {
    return const NavBarDecoration();
  }
}

List<Widget> _buildScreens() {
  return const [
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];
}

List<PersistentBottomNavBarItem> _buildItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      title: "Home",
      textStyle: AppStyles.bold12,
      icon: SvgPicture.asset(
        AppImages.imagesActiveTalabatIcon,
      ),
    ),
    PersistentBottomNavBarItem(
      title: 'Search',
      textStyle: AppStyles.bold12,
      icon: SvgPicture.asset(
        AppImages.imagesActiveSearchIcon,
      ),
    ),
    PersistentBottomNavBarItem(
      title: 'Account',
      textStyle: AppStyles.bold12,
      icon: SvgPicture.asset(
        AppImages.imagesActiveAccountIcon,
        color: Color(0xff63B4FF),
      ),
    ),
  ];
}
