import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
