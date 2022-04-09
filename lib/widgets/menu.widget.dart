import 'package:flutter/material.dart';
import 'package:flutter_application_test/pages/home.page.dart';

import '../pages/task.page.dart';

class MenuWidget extends StatefulWidget {
  MenuWidget({Key? key}) : super(key: key);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0XFFF6F6F6),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Gestion des Tache',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: generateMenuItem(),
            ),
          ),
        ],
      ),
    );
  }

  List<Card> generateMenuItem() {
    List datas = [
      {
        "title": "Liste des Taches",
        "icon": Icons.list_alt_outlined,
        "page": HomePage()
      },
      {"title": "Nouvelle Tache", "icon": Icons.add, "page": TaskPage()}
    ];
    List<Card> menus = [];
    datas.forEach(((menu) {
      menus.add(Card(
        margin: const EdgeInsets.all(6.0),
        child: ListTile(
          title: Text(
            menu['title'],
            style: const TextStyle(fontSize: 18.0),
          ),
          leading: GestureDetector(
              child: Icon(
                menu["icon"],
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => menu["page"])));
              }),
        ),
      ));
    }));
    return menus;
  }
}
