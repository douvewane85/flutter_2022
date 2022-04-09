import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_test/pages/login.page.dart';

List<Widget> IconsAppBar(BuildContext context) {
  List<Widget> widgets = [
    IconButton(
        onPressed: (() {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => LoginPage())));
        }),
        icon: const Icon(Icons.logout))
  ];
  return widgets;
}
