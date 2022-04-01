import 'package:flutter/material.dart';

class AboutHome extends StatelessWidget {
  const AboutHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          aboutRow(icon: Icons.house, text: "Dakar,Senegal"),
          aboutRow(icon: Icons.work, text: "Developpeur Flutter"),
          aboutRow(icon: Icons.favorite, text: "Marie et pere de deux enfants")
      ],
    );
  }

  Widget aboutRow({IconData? icon, required String text}) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            icon,
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          text,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}