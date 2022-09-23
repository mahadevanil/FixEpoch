// import 'package:bizrab/constants/constant.dart';
// import 'package:bizrab/theme/color_theme.dart';
// import 'package:flutter/material.dart';

// import '../../constants/constants.dart';
// import '../pages/account/account_page.dart';
// import '../pages/order/order_page.dart';
// import '../pages/product/product_page.dart';
// import '../pages/table/table_page.dart';
// import '../pages/users/user_page.dart';

// class AdminBottomNav extends StatefulWidget {
//   const AdminBottomNav({Key? key}) : super(key: key);

//   @override
//   _AdminBottomNavState createState() => _AdminBottomNavState();
// }

// class _AdminBottomNavState extends State<AdminBottomNav>
//     with TickerProviderStateMixin {
//   late TabController tabController;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     tabController = TabController(length: 5, vsync: this);
//   }

//   List<Widget> myTabs = [
//     const HomePage(),
//     const ProductPage(),
//     const TablePage(),
//     const UserPage(),
//     const AccountPage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: TabBarView(
//         physics: const NeverScrollableScrollPhysics(),
//         controller: tabController,
//         children: myTabs,
//       ),
//       bottomNavigationBar: SizedBox(
//         height: kBottomNavigationBarHeight,
//         child: BottomAppBar(
//           // color: const Color(0xff050B18),
//           child: TabBar(
//             indicator: const UnderlineTabIndicator(
//                 insets: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
//                 borderSide: BorderSide(
//                   color: ColorTheme.button,
//                   width: 5,
//                 )),
//             labelColor: ColorTheme.button,
//             unselectedLabelColor: const Color(0xff696C75),
//             controller: tabController,
//             tabs: const [
//               Tab(
//                 icon: Icon(Constant.home),
//               ),
//               Tab(
//                 icon: Icon(Constant.home),
//               ),
//               Tab(
//                 icon: Icon(Constant.home),
//               ),
//               Tab(
//                 icon: Icon(Constant.home),
//               ),
//               Tab(
//                 icon: Icon(Constant.account),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
