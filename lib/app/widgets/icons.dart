import 'package:flutter/material.dart';
import 'package:foxapp/app/core/values/colors.dart';
import 'package:foxapp/app/core/values/icons.dart';

List<Icon> getIcons() {
  return const [
    Icon(IconData(personIcon, fontFamily: 'MaterialIcons'), color: deepPink),
    Icon(IconData(workIcon, fontFamily: 'MaterialIcons'), color: yellow),
    Icon(IconData(movieIcon, fontFamily: 'MaterialIcons'), color: purple),
    Icon(IconData(sportIcon, fontFamily: 'MaterialIcons'), color: blue),
    Icon(IconData(travelIcon, fontFamily: 'MaterialIcons'), color: green),
    Icon(IconData(shopIcon, fontFamily: 'MaterialIcons'), color: lightBlue),
  ];
}
