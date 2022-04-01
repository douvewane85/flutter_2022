import 'package:flutter/material.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Column(children: [
      Text(
        "Birane Baila Wane ",
        style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          "Ingenieur Informaticien:Analyste Concepteur,Developpeur FullStack",
          style: TextStyle(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ]);;
  }
}
