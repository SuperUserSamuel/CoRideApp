
import 'package:animations/animations.dart';
import 'package:corideapp/main/profileSetup/personalInfo/my_profile_info.dart';

import 'package:corideapp/main/trip_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../views/home.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  int iosPageIndex = 0;


// its very important not to blunder this line of code else you would be fucked in an infinite loop
  String currentVersion = '1.0.1';

  List<Widget> pageList = <Widget>[
    const HomeScreen(),
    TripHistory(),
    MyProfileBioInfo(),

  ];

  @override
  void initState() {
    super.initState();
  }

  // void shouldUpdateApp() async {
  //   try {
  //     final versionUrls = await FirebaseRemoteConfigAndroidIosUrl.urlForAndroidAndIos();
  //     final willUpdate = await FirebaseRemoteConfigUpdateApp.initForUpdating();
  //
  //     final appStoresUrl =
  //     await FirebaseRemoteConfigAndroidUpdateUrlForPlayStore
  //         .urlUpdateFromStoresForAndroidAndIos();
  //
  //     if (willUpdate.isNotEmpty &
  //     versionUrls.isNotEmpty &
  //     appStoresUrl.isNotEmpty) {
  //       if (!mounted) return;
  //       if (willUpdate.first == true && willUpdate.last != currentVersion) {
  //         showAppUpdateDialog(
  //             context: context,
  //             isMandatory: willUpdate[1],
  //             iosAppStoreUrl: appStoresUrl.last,
  //             androidPlayStoresUrl: appStoresUrl.first);
  //       }
  //     }
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    if (isMaterial(context)) {
      return _getMaterialWidget();
    } else {
      return _getCupertinoWidget(context, iosPageIndex);
    }
  }

  Widget _getCurrentBody() {
    return PageTransitionSwitcher(
      transitionBuilder: (Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        );
      },
      child: pageList[pageIndex],
    );
  }

  Widget _getCurrentBodyIOS() {
    return PageTransitionSwitcher(
      transitionBuilder: (Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        );
      },
      child: pageList[iosPageIndex],
    );
  }

  // void _showBackDialog() {
  //   showDialog<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text(AppLocalizations.of(context)!.are_u_sure),
  //         content: Text(
  //           AppLocalizations.of(context)!.are_u_sure1,
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             style: TextButton.styleFrom(
  //               textStyle: Theme.of(context).textTheme.labelLarge,
  //             ),
  //             child: Text(AppLocalizations.of(context)!.never_mind),
  //             onPressed: () {
  //               Navigator.pop(context);
  //             },
  //           ),
  //           TextButton(
  //             style: TextButton.styleFrom(
  //               textStyle: Theme.of(context).textTheme.labelLarge,
  //             ),
  //             child: Text(AppLocalizations.of(context)!.leave),
  //             onPressed: () {
  //               SystemNavigator.pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  Widget _getMaterialWidget() {
    return PopScope(
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        // _showBackDialog();
      },
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          indicatorColor: const Color(0xff80D8ff),
          selectedIndex: pageIndex,
          onDestinationSelected: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          destinations: [
            NavigationDestination(
                icon: const Icon(Icons.home_filled),
                label: 'Home'),

            NavigationDestination(
                icon: const Icon(Icons.work_history_sharp),
                label: 'Drive History'),

            NavigationDestination(
              icon: CircleAvatar(
                radius: 15.r,
                backgroundImage:
                const AssetImage("assets/images/gray.png"),
              ),
              label: 'Profile',
            )

            // StreamBuilder<User?>(
            //     stream: FirebaseAuth.instance.authStateChanges(),
            //     builder: (BuildContext context, snapshot) {
            //       if (snapshot.hasData &&
            //           snapshot.data != null &&
            //           snapshot.data?.photoURL != null) {
            //         return NavigationDestination(
            //           icon: CircleAvatar(
            //               radius: 14,
            //               backgroundImage:
            //               NetworkImage(snapshot.data!.photoURL!)),
            //           label: 'Profile',
            //         );
            //       } else if (snapshot.hasError) {
            //         return NavigationDestination(
            //           icon: CircleAvatar(
            //             radius: 15.r,
            //             backgroundImage:
            //             const AssetImage("assets/images/gray.png"),
            //           ),
            //           label: AppLocalizations.of(context)!.profile,
            //         );
            //       } else {
            //         return NavigationDestination(
            //           icon: CircleAvatar(
            //             radius: 15.r,
            //             backgroundImage:
            //             const AssetImage("assets/images/gray.png"),
            //           ),
            //           label: AppLocalizations.of(context)!.profile,
            //         );
            //       }
            //     })

            // NavigationDestination(icon: Icon(Icons.theaters), label: "Gallery"),
          ],
        ),
        body: _getCurrentBody(),
      ),
    );
  }

  Widget _getCupertinoWidget(BuildContext mainContext, myIndex) {
    return PopScope(
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        // _showBackDialog();
      },
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          onTap: (int index) {
            setState(() {
              iosPageIndex = index;
            });
          },
          currentIndex: iosPageIndex,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home_filled),
                label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.work_history_sharp), label: 'Drive History'),

            const BottomNavigationBarItem(
                icon: Icon(Icons.work_history_sharp), label: 'Profile'),

            // BottomNavigationBarItem(
            //     icon: StreamBuilder<User?>(
            //         stream: FirebaseAuth.instance.authStateChanges(),
            //         builder: (BuildContext context, snapshot) {
            //           if (snapshot.hasData &&
            //               snapshot.data != null &&
            //               snapshot.data?.photoURL != null) {
            //             return CircleAvatar(
            //                 radius: 14,
            //                 backgroundImage:
            //                 NetworkImage(snapshot.data!.photoURL!));
            //           } else if (snapshot.hasError) {
            //             return CircleAvatar(
            //               radius: 15.r,
            //               backgroundImage:
            //               const AssetImage("assets/images/profile.png"),
            //             );
            //           } else {
            //             return CircleAvatar(
            //               radius: 15.r,
            //               backgroundImage:
            //               const AssetImage("assets/images/profile.png"),
            //             );
            //           }
            //         }),
            //     label: AppLocalizations.of(context)!.profile),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) =>
                CupertinoPageScaffold(
                  child: _getCurrentBodyIOS(),
                ),
          );
        },
      ),
    );
  }
}