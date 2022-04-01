import 'package:flutter/material.dart';

class TextTitleHome extends StatelessWidget {
  final String text;

  const TextTitleHome({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(text,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
    );
    ;
  }
}
