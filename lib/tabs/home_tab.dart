import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() =>
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 203, 236, 241),
                    Colors.white
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter
              )
          ),
        );
  }
}
