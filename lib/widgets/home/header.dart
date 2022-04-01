import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "images/cover.jpg",
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: 130),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white60,
              child: CircleAvatar(
                radius: 68,
                backgroundImage: AssetImage("images/profile.jpg"),
              ),
            ),
          )
        ],
      ),
    );;
  }
}
