import 'package:flutter_application_test/models/task.models.dart';

class TaskService {
  static List<TaskModel> getTasks() {
    return [
      TaskModel(
          title: "Ma Premiere Tache",
          description:
              "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression."),
      TaskModel(
          title: "Ma Deuxieme Tache",
          description:
              "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression."),
      TaskModel(
          title: "Ma Troisieme Tache",
          description:
              "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.")
    ];
  }
}
