import 'package:flutter/material.dart';
import 'package:minha_bomba/tabs/home_tab.dart';
import 'package:minha_bomba/widgets/custom_drawer.dart';

class HomeMinhaBomba extends StatefulWidget {
  @override
  _HomeMinhaBombaState createState() => _HomeMinhaBombaState();
}

class _HomeMinhaBombaState extends State<HomeMinhaBomba> {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(),
        )
      ],
    );
  }
}
