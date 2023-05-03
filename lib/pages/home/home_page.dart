import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sundar_cv/pages/about_me/about_me_page.dart';
import 'package:sundar_cv/pages/contact/contact_page.dart';
import 'package:sundar_cv/pages/home/actual_home_page.dart';
import 'package:sundar_cv/pages/home/tab_item.dart';
import 'package:sundar_cv/pages/work/work_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentTab = TabItem.home.index;
  final List<Widget> _navigatorKeys = <Widget>[
    const ActualHomePage(),
    const AboutMePage(),
    const WorkPage(),
    const ContactPage(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return getMaterialScaffold();
    } else {
      return getCupertinoScafold();
    }
  }

  Scaffold getMaterialScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CV"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: getTabBarItems,
        currentIndex: _currentTab,
        selectedItemColor: Colors.teal,
        onTap: _onTabSelected,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
      body: Center(
        child: _navigatorKeys.elementAt(_currentTab),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  CupertinoTabScaffold getCupertinoScafold() {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: getTabBarItems,
        currentIndex: _currentTab,
        onTap: _onTabSelected,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('CV'),
              ),
              body: Center(
                child: _navigatorKeys.elementAt(_currentTab),
              ),
            );
          },
        );
      },
    );
  }
}

List<BottomNavigationBarItem> get getTabBarItems {
  return [
    BottomNavigationBarItem(
        icon: const Icon(Icons.home), label: TabItem.home.name),
    BottomNavigationBarItem(
        icon: const Icon(Icons.person), label: TabItem.aboutMe.name),
    BottomNavigationBarItem(
        icon: const Icon(Icons.work), label: TabItem.work.name),
    BottomNavigationBarItem(
        icon: const Icon(Icons.contact_phone), label: TabItem.contact.name)
  ];
}
