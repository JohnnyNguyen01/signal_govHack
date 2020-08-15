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
                        child: AreaUpdateCard(
                          title: "Area now declared SAFE",
                          color: Colors.green.shade500,
                          textOne: "RFS has successfuly responded and",
                          textTwo: "put out the small fire at 5:00pm",
                          icon: FontAwesomeIcons.checkCircle,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AreaUpdateCard(
                        title: "Area now declared DANGEROUS",
                        textOne: "RFS Alerted to the scene",
                        textTwo: "mild fire ",
                        icon: FontAwesomeIcons.bell,
                        color: Colors.red.shade700,
                      ),
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

class AreaUpdateCard extends StatelessWidget {
  /*
    Original values
    color: Green.shade500
    textOne: RFS has successfuly responded and
    textTwo: put out the small fire at 5:00pm
    icon: FontAwesomeIcons.checkCircle
   */

  String title;
  String textOne;
  String textTwo;
  Color color;
  IconData icon;

  AreaUpdateCard({
    this.title,
    this.textOne,
    this.textTwo,
    this.color,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 320,
          height: 80,
          color: color,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 8),
                child: FaIcon(
                  icon,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      textOne,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      textTwo,
                      style: TextStyle(color: Colors.white),
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
