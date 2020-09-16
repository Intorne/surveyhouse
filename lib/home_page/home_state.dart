import 'package:flutter/material.dart';

class HomeState extends StatefulWidget {
  @override
  _HomeStateState createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text(
              "Survey House",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.orange,
                fontWeight: FontWeight.normal,
              )
          )
      ),
      body: Container(
        color: Colors.grey,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("imagens/logoPB.png"),
              decoration: BoxDecoration(
                  color: Colors.orange
              ),
            ),
            ListTile(
              title: Row(children: [
                Icon(Icons.calendar_today),
                Text("Calendário"),
              ],),
              onTap: () {},
            ),
            ListTile(
                title: Row(children: [
                  Icon(Icons.announcement),
                  Text("Avisos"),
                ],),
                onTap: () {}
            ),
            ListTile(
                title: Row(children: [
                  Icon(Icons.assignment),
                  Text("Relatórios"),
                ],),
                onTap: () {}
            ),
            ListTile(
                title: Row(children: [
                  Icon(Icons.search),
                  Text("Vistorias"),
                ],),
                onTap: () {}
            ),
            ListTile(
                title: Row(children: [
                  Icon(Icons.location_on),
                  Text("Locais"),
                ],),
                onTap: () {}
            ),
            ListTile(
                title: Row(children: [
                  Icon(Icons.exit_to_app),
                  Text("Sair"),
                ],),
                onTap: () {}
            ),
          ],
        ),
      ),
    );
  }
}