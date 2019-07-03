import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:sportnews/home.dart';
import 'package:sportnews/comp.dart';
import 'package:sportnews/fav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
         inactiveIconColor: Colors.grey,
         activeIconColor: Colors.redAccent,
         circleColor: Colors.white,
         textColor: Colors.redAccent,
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "Home",
          ),
          TabData(
            iconData: Icons.whatshot,
            title: "Comptetion",
          ),
          TabData(iconData: Icons.wb_incandescent, title: "Table"),
          TabData(iconData: Icons.shopping_cart, title: "My Favourite")
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[Text("Hello"), Text("Nikhil")],
        ),
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return ExampleApp();
      case 1:
        return Comp();
        case 2:
        //return Total();
      case 3:
        return Fav();
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the basket page"),
          ],
        );
    }
  }
}