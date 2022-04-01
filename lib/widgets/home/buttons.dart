import 'package:flutter/material.dart';

class ButtonsHome extends StatelessWidget {
  const ButtonsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: [
              Expanded(child: buttonContainer(text: "Modifier Mon Profil")),
              buttonContainer(icon: Icons.border_color)
            ]);
  }


  Container buttonContainer({IconData? icon, String? text}) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue),
      child: (icon == null)
          ? Center(
              child: Text(
              text ?? "",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ))
          : Icon(
              icon,
              color: Colors.white,
            ),
      height: 50,
    );
  }
}