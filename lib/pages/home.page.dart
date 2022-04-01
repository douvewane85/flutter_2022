import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/home/title.dart';

import '../widgets/home/about.dart';
import '../widgets/home/amis.dart';
import '../widgets/home/buttons.dart';
import '../widgets/home/header.dart';
import '../widgets/home/posts.dart';
import '../widgets/home/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          HeaderHome(),
          ProfileHome(),
          ButtonsHome(),
          Divider( thickness: 2, ),
          const TextTitleHome(text: "A propos de Mois"),
          AboutHome(),
          Divider( thickness: 2,),
          const TextTitleHome(text:"Amis"),
          SectionFriends(width:size.width),
          Divider(
            thickness: 2,
          ),
         const TextTitleHome(text:"Mes Posts"),
         PostsHome()
        ]),
      ),
    );
    ;
  }
}
