import 'package:flutter/material.dart';
import 'package:self_care/constants.dart';
import 'package:self_care/stats_page.dart';
import 'articles_page.dart';
import 'bottom_nav_bar.dart';
import 'profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
      home: SelfCareStfl(),
    );
  }
}

class SelfCareStfl extends StatefulWidget {
  @override
  _SelfCareStflState createState() => _SelfCareStflState();
}

class _SelfCareStflState extends State<SelfCareStfl> {
  int _currentIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    ArticlesPage(),
    StatsPage(),
    ProfilePage(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('SelfCare'),
          ),
        ),
        body: _widgetOptions[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Center(
                child: Icon(
                  Icons.web,
                  color: _currentIndex == 0
                      ? kActiveCardColor
                      : kInactiveCardColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart,
                color:
                    _currentIndex == 1 ? kActiveCardColor : kInactiveCardColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color:
                    _currentIndex == 2 ? kActiveCardColor : kInactiveCardColor,
              ),
              label: '',
            )
          ],
          onTap: onTapped,
          selectedItemColor: kActiveCardColor,
          unselectedItemColor: kInactiveCardColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ));
  }
}
