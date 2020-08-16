import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signal_flutter_v2/components/area_update_card.dart';

final sydney = [
  AreaUpdateCard(
    title: "Area now declared SAFE",
    color: Colors.green.shade500,
    textOne: "RFS has successfuly responded and",
    textTwo: "put out the small fire at 5:00pm",
    icon: FontAwesomeIcons.checkCircle,
  ),
  AreaUpdateCard(
    title: "Area now declared DANGEROUS",
    textOne: "RFS Alerted to the scene",
    textTwo: "mild fire ",
    icon: FontAwesomeIcons.bell,
    color: Colors.red.shade700,
  ),
];
