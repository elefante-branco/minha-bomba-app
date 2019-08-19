import 'dart:async';

import 'package:flutter/material.dart';
import 'package:minha_bomba/tabs/home_tab.dart';
import 'package:minha_bomba/widgets/custom_drawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class HomeMinhaBomba extends StatefulWidget {
  @override
  _HomeMinhaBombaState createState() => _HomeMinhaBombaState();
}

class _HomeMinhaBombaState extends State<HomeMinhaBomba> {

  final _pageController = PageController();

  var location = new Location();

  Map<String, double> userLocation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _getLocation().then((value) {
      setState(() {
        userLocation = value;
      });
    });

  }

  CameraPosition _initialPosition = CameraPosition(target: LatLng(26.8206, 30.8025));
  Completer<GoogleMapController> _controller = Completer();
  MapType _defaultMapType = MapType.normal;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: <Widget>[
        Scaffold(
          appBar: AppBar(title: Text("Minha Bomba"), centerTitle: true,),
          body: GoogleMap(
            mapType: _defaultMapType,
            myLocationEnabled: true,
            onMapCreated: _onMapCreated,
            initialCameraPosition: null,
          ),
          drawer: CustomDrawer(),
        )
      ],
    );
  }


  Future<Map<String, double>> _getLocation() async {
    var currentLocation = <String, double>{};
    try {
      currentLocation = await location.getLocation();
    } catch (e) {
      currentLocation = null;
    }
    return currentLocation;
  }

}
