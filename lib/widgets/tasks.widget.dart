import 'package:flutter/material.dart';
import 'package:flutter_application_test/models/task.models.dart';

class TaskCardWidget extends StatelessWidget {
  final TaskModel task;
  const TaskCardWidget({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            task.title,
            style: const TextStyle(
                color: Color(0xFF211551),
                fontSize: 22.0,
                fontWeight: FontWeight.w600),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          Text(
            task.description,
            style: const TextStyle(
                color: Color(0xFF866829D), fontSize: 16.0, height: 1.5),
          ),
        ],
      ),
    );
  }
}
