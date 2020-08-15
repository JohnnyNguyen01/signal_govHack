import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//REMOVE THIS GOOGLE_MAPS_API_KEY = 'AIzaSyAr31utYalU_q4_Lh1GtqZrCDgg0VBlcHI'

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GoogleMapController _mapController;
  Set<Marker> _markers = HashSet<Marker>();
  BitmapDescriptor _customIcon;

  // @override
  // void initState() {
  //   super.initState();
  //   BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(15, 15)),
  //           "/lib/assets/images/fire_icon.png")
  //       .then((icon) {
  //     _customIcon = icon;
  //   });
  // }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    setState(() {
      _markers.add(
        Marker(
            //todo change marker id -> unique
            markerId: MarkerId("0"),
            position: LatLng(-33.8688, 151.2093),
            onTap: () {
              showCupertinoModalBottomSheet(
                  context: context,
                  builder: (context, scrollController) {
                    return Container();
                  });
            },
            infoWindow: InfoWindow(
              title: "Sydney",
              snippet: "No Fire",
            )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(-33.8688, 151.2093),
            zoom: 12,
          ),
          markers: _markers,
        ),
        Positioned(
          bottom: 15,
          child: IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () => showCupertinoModalBottomSheet(
              context: context,
              builder: (context, scrollController) => Container(
                color: Colors.transparent,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
