import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'core/utils/styles/app_colors.dart';
import 'core/utils/styles/app_images.dart';
import 'core/utils/styles/app_styles.dart';

PersistentTabController _controller = PersistentTabController();

class TalabatAppBottomNavBarView extends StatelessWidget {
  const TalabatAppBottomNavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      navBarHeight: 60,
      isVisible: true,
      items: _buildItems(context),
      backgroundColor: AppColors.grey100,
      decoration: navBarDecorationMethod(),
      navBarStyle: NavBarStyle.style6, // (6 | 7 | 8 | 14) the best style
    );
  }

  NavBarDecoration navBarDecorationMethod() {
    return const NavBarDecoration();
  }
}

List<Widget> _buildScreens() {
  return const [
    SizedBox(), //Home
    SizedBox(), //Search
    SizedBox(), //Account
  ];
}

List<PersistentBottomNavBarItem> _buildItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      title: "Home",
      activeColorPrimary: AppColors.inactiveButton,
      activeColorSecondary: AppColors.main,
      textStyle: AppStyles.bold14,
      icon: SvgPicture.asset(
        AppImages.imagesActiveTalabatIcon,
      ),
      inactiveIcon: SvgPicture.asset(
        AppImages.imagesInactiveTalabatIcon,
      ),
    ),
    PersistentBottomNavBarItem(
      title: 'Search',
      activeColorPrimary: AppColors.inactiveButton,
      activeColorSecondary: AppColors.main,
      icon: SvgPicture.asset(
        AppImages.imagesActiveSearchIcon,
      ),
      inactiveIcon: SvgPicture.asset(
        AppImages.imagesInactiveSearchIcon,
      ),
    ),
    PersistentBottomNavBarItem(
      title: 'Account',
      activeColorPrimary: AppColors.inactiveButton,
      activeColorSecondary: AppColors.main,
      icon: SvgPicture.asset(
        AppImages.imagesActiveAccountIcon,
      ),
      inactiveIcon: SvgPicture.asset(
        AppImages.imagesInactiveAccountIcon,
      ),
    ),
  ];
}
