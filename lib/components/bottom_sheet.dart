import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'area_update_card.dart';

//initial values
// "https://www.nationalparks.nsw.gov.au/-/media/npws/images/parks/gundabooka-national-park/little-mountain-walking-track/little-mountain-track-01.jpg"
// Sydney
// 124
// none

class CustomBottomSheet extends StatelessWidget {
  String location;
  String imageURL;
  bool isSafe;
  String rfsResponse;
  String reports;
  List<Widget> areaUpdateCardsList;

  CustomBottomSheet({
    @required this.imageURL,
    @required this.reports,
    @required this.location,
    @required this.isSafe,
    @required this.rfsResponse,
    @required this.areaUpdateCardsList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(imageURL),
              ),
              Container(
                margin: EdgeInsets.only(left: 12),
                child: Column(
                  children: <Widget>[
                    Text(
                      location,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "status: ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          isSafe ? "SAFE" : "DANGER",
                          style: TextStyle(
                              fontSize: 20,
                              color:
                                  isSafe ? Colors.green.shade500 : Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "reports: ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          reports,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "RFS response: ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "none",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: <Widget>[
                        Text("Latest Area Updates"),
                        SizedBox(height: 15),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: areaUpdateCardsList.length,
                          itemBuilder: (context, index) {
                            return (Column(
                              children: <Widget>[
                                areaUpdateCardsList[index],
                                SizedBox(
                                  height: 12,
                                )
                              ],
                            ));
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
