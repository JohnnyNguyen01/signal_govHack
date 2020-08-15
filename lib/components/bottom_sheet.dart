import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                  "https://www.nationalparks.nsw.gov.au/-/media/npws/images/parks/gundabooka-national-park/little-mountain-walking-track/little-mountain-track-01.jpg"),
            ),
            Container(
              margin: EdgeInsets.only(left: 12),
              child: Column(
                children: <Widget>[
                  Text(
                    "SYDNEY",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                        "SAFE",
                        style: TextStyle(
                            fontSize: 20, color: Colors.green.shade500),
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
                        "124",
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Card(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 320,
                              height: 80,
                              color: Colors.green.shade500,
                              child: Row(
                                children: <Widget>[
                                  FaIcon(
                                    FontAwesomeIcons.checkCircle,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
