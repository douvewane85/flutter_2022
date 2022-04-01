import 'package:flutter/material.dart';

class SectionFriends extends StatelessWidget {
  final double width;
  const SectionFriends({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return allFriends(width);
  }

  Row allFriends(double width) {
    List<Map<String, String>> friends = [
      {"name": "Mossa", "image": "images/cat.jpg"},
      {"name": "Aissatou", "image": "images/duck.jpg"},
      {"name": "Cheikhou", "image": "images/playa.jpg"},
    ];
    List<Widget> children = [];
    for (var friend in friends) {
      String name = friend["name"] as String;
      String image = friend["image"] as String;
      children.add(friendsImage(name, image, (width - 12) / friends.length));
    }
    return Row(
      children: children,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }

  Column friendsImage(String name, String pathImage, double width) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(2),
          width: width,
          height: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(pathImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.grey)]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(name),
        )
      ],
    );
  }
}
