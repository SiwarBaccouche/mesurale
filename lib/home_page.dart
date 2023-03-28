import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mesurale/features/home_features/views/components/catalogue_images_list.dart';
import 'core/utils/values/colors.dart';
import 'features/home_features/views/adding_Chassis_view.dart';
import 'features/home_features/views/adding_client_view.dart';
import 'features/home_features/views/client_list_view.dart';
import 'features/home_features/views/components/bottomNavBar.dart';
import 'features/home_features/views/home_page.dart';

//this code sets up a MyHomePage widget that displays a bottom navigation
//bar with different tabs that display different pages of the application.

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.pink
  ];
  final List<Widget> pages = [
    HomePage(),
    AddClient(),
    ClientListView(),
    AddChassis(),

  ];

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 4, vsync: this);
    //the tabController object is created with a length of 4 tabs,
    // and the vsync is set to this which means it will use the current widget as its source of the vsync.
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  //The dispose() method is also overridden to release resources associated
  //with the tabController object when the MyHomePage widget is removed from the widget tree.

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BottomBar(
          currentPage: currentPage,
          tabController: tabController,
          colors: colors,
          unselectedColor: secondaryColor,
          barColor: primaryColor,
          start: 10,
          end: 2,
          child: TabBarView(
            controller: tabController,
            dragStartBehavior: DragStartBehavior.down,
            physics: const BouncingScrollPhysics(),
            children: pages,
          ),
        ),
      ),
    );
  }
}
