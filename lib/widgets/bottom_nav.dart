import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../theme/color_theme.dart';
import '../screens/booking_section/booking_page.dart';
import '../screens/feed_section/feed_page.dart';
import '../screens/home_page/home_page.dart';
import '../screens/user_section/user_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  List<Widget> myTabs = [
    const HomePage(),
    const BookingPage(),
    const FeedPage(),
    const UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: myTabs,
      ),
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        child: BottomAppBar(
          color: ColorTheme.primaryColor,
          // color: const Color(0xff050B18),
          child: TabBar(
            indicator: const UnderlineTabIndicator(
                insets: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
                borderSide: BorderSide(
                  color: ColorTheme.button,
                  width: 5,
                )),
            labelColor: ColorTheme.button,
            // automaticIndicatorColorAdjustment: true,

            unselectedLabelColor: ColorTheme.bgColor,
            // unselectedLabelColor: const Color(0xff696C75),
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(Constant.home),
              ),
              Tab(
                icon: Icon(Constant.booking),
              ),
              Tab(
                icon: Icon(Constant.feed),
              ),
              Tab(
                icon: Icon(Constant.user),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
