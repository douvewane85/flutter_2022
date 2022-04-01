import 'package:flutter/material.dart';

class PostsHome extends StatelessWidget {
  const PostsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         post(
              image: "images/carnaval.jpg",
              time: "il y'a 5 mn",
              desc: "Carnaval de Dakar,Soyez les Biens venus"),
          post(
              image: "images/mountain.jpg",
              time: "il y'a 1 Semaine",
              desc: "Carnaval de Dakar,Soyez les Biens venus",
              likes: 10)
      ],
    );
  }


  Container post(
      {required String time,
      required String image,
      required String desc,
      comments = 0,
      likes = 0}) {
    return Container(
        margin: EdgeInsets.only(top: 8, left: 1, right: 1),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(220, 220, 220, 0.25)),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/profile.jpg"),
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                Text("BBW"),
                Spacer(),
                Text(
                  time,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Image.asset(
                image,
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              desc,
              style: TextStyle(
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.favorite),
                Text("$likes likes"),
                Icon(Icons.message),
                Text("$comments Commentaires")
              ],
            )
          ],
        ));
  }
}