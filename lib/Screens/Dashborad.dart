import 'package:flutter/material.dart';
import 'package:we_care/Screens/AppointmentsScreen.dart';
import 'package:we_care/Screens/HomeScreen.dart';
import 'package:we_care/Screens/ProfileScreen.dart';
import 'package:we_care/Utils/Constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> pages = const [
    HomeScreen(),
    AppointmentsScreen(),
    ProfileScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          selectedItemColor: MyColor.themeColor,
          unselectedItemColor: MyColor.textColor3,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedFontSize: 15,
          selectedFontSize: 15,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home_outlined,
                  color: MyColor.themeColor,
                ),
                icon: Icon(
                  Icons.home_outlined,
                  color: MyColor.textColor3,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  size: 24,
                  Icons.date_range,
                  color: MyColor.themeColor,
                ),
                icon: Icon(
                  Icons.date_range,
                  color: MyColor.textColor3,
                ),
                label: "Appointments"),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  size: 24,
                  Icons.person_outlined,
                  color: MyColor.themeColor,
                ),
                icon: Icon(
                  Icons.person_outlined,
                  color: MyColor.textColor3,
                ),
                label: "Profile"),
          ],
        ),
      ),
      // body: Column(
      //   children: [
      //     Icon(Icons.home_outlined),
      //     Icon(Icons.person_outlined),
      //     Icon(Icons.date_range),
      //   ],
      // ),
    );
  }
}
