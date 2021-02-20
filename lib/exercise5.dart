import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/exercise5_widgets/exercise5_home.dart';
import 'package:homework/exercise5_widgets/exercise5_home_detail.dart';
import 'package:homework/exercise5_widgets/exercise5_setting.dart';
import 'package:homework/routes/app_routes.dart';

class Exercise5 extends StatefulWidget {
  @override
  _Exercise5State createState() => _Exercise5State();
}

class _Exercise5State extends State<Exercise5> {
  var _selectedIndex = 0;
  var _navigatorKeyHome = Get.nestedKey(1);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _handleBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Excercise 5'),
        ),
        body: _viewTabbar().elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting')
          ],
          currentIndex: _selectedIndex,
          onTap: _onTabSelected,
        ),
      ),
    );
  }

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _viewTabbar() {
    return <Widget>[
      Navigator(
        key: _navigatorKeyHome,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              settings: settings,
              builder: (_) {
                switch (settings.name) {
                  case '/':
                    return Exercise5Home();
                  case Routes.EXERCISE5DETAIL:
                    return Exercise5HomeDetail();
                  default:
                    return Exercise5Home();
                }
              });
        },
      ),
      Exercise5Setting()
    ];
  }

  Future<bool> _handleBackPressed() {
    if (_navigatorKeyHome.currentState.canPop()) {
      _navigatorKeyHome.currentState.pop(_navigatorKeyHome.currentContext);
    } else {
      Get.back();
    }
  }
}
