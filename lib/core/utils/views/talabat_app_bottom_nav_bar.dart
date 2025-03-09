import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../features/account/presentation/views/account_view.dart';
import '../../../features/home/presentation/views/home_view.dart';
import '../../../features/search/presentation/views/search_view.dart';
import '../styles/app_colors.dart';
import '../styles/app_images.dart';
import '../styles/app_styles.dart';

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
      navBarStyle: NavBarStyle.style14, // (6 | 7 | 8 | 14) the best style
    );
  }

  NavBarDecoration navBarDecorationMethod() {
    return const NavBarDecoration();
  }
}

List<Widget> _buildScreens() {
  return const [
    HomeView(), //Home
    SearchView(), //Search
    AccountView(), //Account
  ];
}

List<PersistentBottomNavBarItem> _buildItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      title: "Home",
      contentPadding: 0,
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
      contentPadding: 0,
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
      contentPadding: 0,
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
