import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 203, 236, 241), Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter)),
        );

    return Stack(
      children: <Widget>[
        _buildBodyBack(),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GoogleMap(
                  onMapCreated: (GoogleMapController controller) {},
                ),
              ),
              Container(
                color: Colors.red,
              ),
              Container(color: Colors.blueAccent)
            ],
          ),
        )
      ],
    );
  }
}
