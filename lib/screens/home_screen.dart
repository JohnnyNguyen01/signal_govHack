import 'dart:collection';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:signal_flutter_v2/components/bottom_sheet.dart';
import 'package:signal_flutter_v2/data/area_update_card_lists.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:ui' as ui;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _markerkey = GlobalKey();
  GoogleMapController _mapController;
  BitmapDescriptor _customIcon;
  Set<Marker> _markers = HashSet<Marker>();
  File _image;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration(size: Size(3, 3), devicePixelRatio: 3.5),
            "/lib/assets/images/fire_icon_1_30x30.png")
        .then((icon) {
      _customIcon = icon;
    });
  }

  void getPosition() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  //The initial method that runs everytime Google Maps Opens
  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    setState(() {
      _addMarkerList();
    });
  }

  void _addMarkerList() {
    _markers.add(
      Marker(
          //todo change marker id -> unique
          markerId: MarkerId("1"),
          position: LatLng(-30.501446, 145.702932),
          icon: _customIcon,
          onTap: () => {
                showCupertinoModalBottomSheet(
                    context: context,
                    builder: (context, scrollController) {
                      return CustomBottomSheet(
                          imageURL:
                              "https://www.nationalparks.nsw.gov.au/-/media/npws/images/parks/gundabooka-national-park/valley-of-eagles/valley-of-eagles-walk-01.jpg",
                          reports: "432",
                          location: "Gundabrooka",
                          isSafe: false,
                          rfsResponse: "in area",
                          areaUpdateCardsList: gundabrookaUpdateCardList);
                    }),
              },
          infoWindow: InfoWindow(
            title: "Gunderbrooka",
            snippet: "🔥🔥🔥 Sever",
          )),
    );
    _markers.add(
      Marker(
          //todo change marker id -> unique
          icon: _customIcon,
          markerId: MarkerId("2"),
          position: LatLng(-32.705166, 145.567595),
          onTap: () {
            showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) {
                  return CustomBottomSheet(
                      imageURL:
                          "https://live.staticflickr.com/4148/5064690682_3548b5ac28_b.jpg",
                      reports: "232",
                      location: "Yathong",
                      isSafe: true,
                      rfsResponse: "incoming",
                      areaUpdateCardsList: gundabrookaUpdateCardList);
                });
          },
          infoWindow: InfoWindow(
            title: "Yathong",
            snippet: "🔥 mild",
          )),
    );
    _markers.add(
      Marker(
          //todo change marker id -> unique
          icon: _customIcon,
          markerId: MarkerId("3"),
          position: LatLng(-33.072026, 145.865550),
          onTap: () {
            showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) {
                  return CustomBottomSheet(
                    imageURL:
                        "https://cdn.australia247.info/assets/uploads/1bf828ced23b76e02327e99e8120b085_-new-south-wales-mount-hope-nombinnie-nature-reservehtml.jpg",
                    location: "Nohimbinnie Nature Reserve",
                    reports: "64",
                    isSafe: true,
                    rfsResponse: "none",
                    areaUpdateCardsList: gundabrookaUpdateCardList,
                  );
                });
          },
          infoWindow: InfoWindow(
            title: "Nohimbinnie Nature Reserve",
            snippet: "Safe",
          )),
    );
    _markers.add(
      Marker(
          //todo change marker id -> unique
          icon: _customIcon,
          markerId: MarkerId("4"),
          position: LatLng(-29.095658, 141.426478),
          onTap: () {
            showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) {
                  return CustomBottomSheet(
                      imageURL:
                          "https://www.abc.net.au/news/image/10762292-3x2-940x627.jpg",
                      reports: "112",
                      location: "Stuart National Park",
                      isSafe: false,
                      rfsResponse: "incoming",
                      areaUpdateCardsList: gundabrookaUpdateCardList);
                });
          },
          infoWindow: InfoWindow(
            title: "Stuart National Park",
            snippet: "🔥🔥🔥 Sever",
          )),
    );
    _markers.add(
      Marker(
          //todo change marker id -> unique
          icon: _customIcon,
          markerId: MarkerId("5"),
          position: LatLng(-30.962721, 142.693419),
          onTap: () {
            showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) {
                  return CustomBottomSheet(
                      imageURL:
                          "https://ichef.bbci.co.uk/news/320/cpsprodpb/14644/production/_110242538_gettyimages-1194815171.jpg",
                      reports: "112",
                      location: "Mutawinji",
                      isSafe: false,
                      rfsResponse: "on site",
                      areaUpdateCardsList: gundabrookaUpdateCardList);
                });
          },
          infoWindow: InfoWindow(
            title: "Mutawinji",
            snippet: "🔥🔥🔥 Sever",
          )),
    );
    _markers.add(
      Marker(
          //todo change marker id -> unique
          icon: _customIcon,
          markerId: MarkerId("7"),
          position: LatLng(-33.768513, 146.281073),
          onTap: () {
            showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) {
                  return CustomBottomSheet(
                      imageURL:
                          "https://www.abc.net.au/cm/rimage/7835986-16x9-xlarge.jpg?v=4",
                      reports: "34",
                      location: "Jimberoo National Park",
                      isSafe: false,
                      rfsResponse: "incoming",
                      areaUpdateCardsList: gundabrookaUpdateCardList);
                });
          },
          infoWindow: InfoWindow(
            title: "Jimberoo National Park",
            snippet: "🔥 mild fire",
          )),
    );
    _markers.add(
      Marker(
          //todo change marker id -> unique
          icon: _customIcon,
          markerId: MarkerId("8"),
          position: LatLng(-34.035388, 146.194336),
          onTap: () {
            showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) {
                  return CustomBottomSheet(
                      imageURL:
                          "https://www.denverpost.com/wp-content/uploads/2019/08/01381090c8bb4aebbcaf759c34b047bc.jpg",
                      reports: "45",
                      location: "Cococapra",
                      isSafe: false,
                      rfsResponse: "on site",
                      areaUpdateCardsList: gundabrookaUpdateCardList);
                });
          },
          infoWindow: InfoWindow(
            title: "Cococapra",
            snippet: "Fire",
          )),
    );
    _markers.add(
      Marker(
          //todo change marker id -> unique
          markerId: MarkerId("9"),
          icon: _customIcon,
          position: LatLng(-31.769398, 150.101581),
          onTap: () {
            showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) {
                  return CustomBottomSheet(
                      imageURL:
                          "https://www.denverpost.com/wp-content/uploads/2019/08/01381090c8bb4aebbcaf759c34b047bc.jpg",
                      reports: "45",
                      location: "Cococapra",
                      isSafe: false,
                      rfsResponse: "on site",
                      areaUpdateCardsList: gundabrookaUpdateCardList);
                });
          },
          infoWindow: InfoWindow(
            title: "Coolah Tops",
            snippet: "🔥 mild fire",
          )),
    );
    _markers.add(
      Marker(
          //todo change marker id -> unique
          markerId: MarkerId("10"),
          icon: _customIcon,
          position: LatLng(-31.621455, 152.016470),
          onTap: () {
            showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) {
                  return CustomBottomSheet(
                      imageURL:
                          "https://www.denverpost.com/wp-content/uploads/2019/08/01381090c8bb4aebbcaf759c34b047bc.jpg",
                      reports: "45",
                      location: "Bugan National Fire Reserve",
                      isSafe: false,
                      rfsResponse: "on site",
                      areaUpdateCardsList: gundabrookaUpdateCardList);
                });
          },
          infoWindow: InfoWindow(
            title: "Bugan National Reserve",
            snippet: "🔥 mild fire",
          )),
    );
    _markers.add(
      Marker(
          //todo change marker id -> unique
          markerId: MarkerId("11"),
          icon: _customIcon,
          position: LatLng(-33.777837, 147.800537),
          onTap: () {
            showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) {
                  return Container();
                });
          },
          infoWindow: InfoWindow(
            title: "Pullabooka",
            snippet: "🔥 mild fire",
          )),
    );
  }

  //
  @override
  Widget build(BuildContext context) {
    //scaffold is the base of any page that you make
    return Scaffold(
        body: Stack(
      children: <Widget>[
        GoogleMap(
          onMapCreated: _onMapCreated,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          initialCameraPosition: CameraPosition(
            target: LatLng(-33.8688, 151.2093),
            zoom: 6,
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
            onPressed: () {
              showCupertinoModalBottomSheet(
                context: context,
                builder: (context, scrollController) => Container(
                  child: Column(
                    children: <Widget>[Text("Hello there")],
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          right: 14,
          bottom: 14,
          child: FloatingActionButton(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:
                        LinearGradient(colors: [Colors.red, Colors.orange])),
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
              onPressed: () => showCupertinoModalBottomSheet(
                  context: context,
                  builder: (context, scrollController) {
                    double severity = 0;
                    return (Scaffold(
                      body: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Report incident in:"),
                          SizedBox(height: 20),
                          Text("upload a photo"),
                          Center(
                            child: Container(
                              width: 300,
                              height: 200,
                              child: Stack(
                                children: <Widget>[
                                  _image == null
                                      ? Center(
                                          child: Text('No image selected.'))
                                      : Image.file(_image),
                                  Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child: FloatingActionButton(
                                        child: Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(colors: [
                                              Colors.red,
                                              Colors.orange
                                            ]),
                                          ),
                                          child: Icon(
                                            FontAwesomeIcons.camera,
                                            size: 25,
                                          ),
                                        ),
                                        onPressed: () => getImage()),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Slider(
                              value: severity,
                              min: 0,
                              max: 100,
                              //divisions: 4,
                              onChanged: (double value) {
                                setState(() => severity = value);
                              }),
                          SizedBox(height: 30),
                          FlatButton(
                              onPressed: () {},
                              child: Text(
                                "CONFIRM",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              )),
                          FlatButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "CANCEL",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ))
                        ],
                      ),
                    ));
                  })),
        ),
      ],
    ));
  }
}
