import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screens {
  const Screens(this.label, this.icon, this.color);
  final String label;
  final IconData icon;
  final MaterialColor color;
}

const List<Screens> allScreens = <Screens>[
  Screens('Home', Icons.home, Colors.pink),
  Screens('Serch', CupertinoIcons.search, Colors.orange),
  Screens('Users', CupertinoIcons.person, Colors.amber),
  Screens('Cart', Icons.card_giftcard, Colors.amber),

];