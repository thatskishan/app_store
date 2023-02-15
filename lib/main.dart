import 'package:app_store/ANdroid%20Screens/apps.dart';
import 'package:app_store/ANdroid%20Screens/books.dart';
import 'package:app_store/ANdroid%20Screens/games.dart';
import 'package:app_store/ANdroid%20Screens/movies.dart';
import 'package:app_store/IOS%20Screens/apps.dart';
import 'package:app_store/IOS%20Screens/arcade.dart';
import 'package:app_store/IOS%20Screens/games.dart';
import 'package:app_store/IOS%20Screens/search.dart';
import 'package:app_store/IOS%20Screens/today.dart';
import 'package:app_store/app_details.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Globals/globals.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  bool isTapped = false;
  int pageIndex = 0;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // _myHandler = _tabs[_selectedIndex];
    });
  }

  final screen = [
    const Games(),
    const Apps(),
    const Movies(),
    const Books(),
  ];

  late TabController _tabController;
  List<Map> myTabs = [
    {
      'label': "For you",
      'index': 0,
    },
    {
      'label': "Top charts",
      'index': 1,
    },
    {
      'label': "Children",
      'index': 2,
    },
    {
      'label': "Event",
      'index': 3,
    },
    {
      'label': "Premium",
      'index': 4,
    },
    {
      'label': "Categories",
      'index': 5,
    },
  ];

  List screenControl = [
    TodayIOS(),
    GamesIOS(),
    AppsIOS(),
    ArcadeIOS(),
    SearchIOS(),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Globals.isAndroid
        ? MaterialApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            theme: ThemeData(
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            routes: {
              'app_details': (context) => const AppDetails(),
            },
            home: Scaffold(
              appBar: AppBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                leading: Switch(
                  value: Globals.isAndroid,
                  onChanged: (val) => setState(
                    () => Globals.isAndroid = val,
                  ),
                ),
                title: Text(
                  "Search for apps & games",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                    ),
                  ),
                ],
                bottom: TabBar(
                  indicatorColor: Colors.green,
                  labelColor: Colors.green,
                  controller: _tabController,
                  isScrollable: true,
                  dividerColor: Colors.grey.shade800,
                  tabs: myTabs
                      .map((e) => Tab(
                            child: Text(
                              "${e['label']}",
                              style: GoogleFonts.poppins(),
                            ),
                          ))
                      .toList(),
                ),
              ),
              // drawer: const DrawerPage(),
              body: Stack(
                children: [
                  screen[_selectedIndex],
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: bottomNavigationBar,
                  ),
                ],
              ),
            ),
          )
        : CupertinoApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: Builder(
              builder: (context) {
                return CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    backgroundColor: CupertinoColors.white,
                    border: Border.all(color: CupertinoColors.white),
                    leading: Text(
                      "MONDAY 13 FEBRUARY",
                      style: GoogleFonts.openSans(
                        color: CupertinoColors.inactiveGray,
                      ),
                    ),
                    trailing: CupertinoSwitch(
                      value: Globals.isAndroid,
                      onChanged: (val) => setState(
                        () => Globals.isAndroid = val,
                      ),
                    ),
                  ),
                  child: CupertinoTabScaffold(
                    tabBar: CupertinoTabBar(
                      // items: IOSTab.myIOSTab
                      //     .map(
                      //       (e) => BottomNavigationBarItem(
                      //         icon: Icon(e['icon']),
                      //         label: e['name'],
                      //       ),
                      //     )
                      //     .toList(),
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.today),
                          label: "Today",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.rocket),
                          label: "Games",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.layers),
                          label: "Apps",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.map),
                          label: "Arcade",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.search),
                          label: "Search",
                        ),
                      ],
                    ),
                    // tabBuilder: (context, i) {
                    //   if (i == 0) {
                    //     return const TodayIOS();
                    //   } else if (i == 1) {
                    //     return const GamesIOS();
                    //   } else if (i == 2) {
                    //     return const AppsIOS();
                    //   } else if (i == 3) {
                    //     return const ArcadeIOS();
                    //   } else if (i == 4) {
                    //     return const SearchIOS();
                    //   }
                    //   return Container();
                    // },
                    tabBuilder: (context, index) {
                      return CupertinoTabView(
                        builder: (context) {
                          return screenControl[index];
                        },
                      );
                    },
                  ),
                );
              },
            ),
          );
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: 'Movies & TV',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Books',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xff181725),
        selectedItemColor: const Color(0xff53B175),
        showUnselectedLabels: true,
        onTap: (value) {
          _onItemTapped(value);
        },
      ),
    );
  }
}
