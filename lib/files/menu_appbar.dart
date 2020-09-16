import 'package:flutter/material.dart';

class SHAppBar extends AppBar {
  SHAppBar({Key key, Widget title})
      : super(
    key: key,
    title: Image.asset(
      'imagens/logoPB.png',
      width: 120.0,
    ),
    titleSpacing: 0.0,
    leading: Builder(
      builder: (context) => IconButton(
        icon: new Icon(
          Icons.menu,
          size: 24,
          color: Color.fromRGBO(32, 153, 160, 1),
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    ),
  );
}