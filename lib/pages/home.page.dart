import 'package:flutter/material.dart';
import 'package:flutter_application_test/models/task.models.dart';
import 'package:flutter_application_test/pages/task.page.dart';
import 'package:flutter_application_test/widgets/icons.app.bar.dart';
import 'package:flutter_application_test/widgets/tasks.widget.dart';

import '../services/task.service.dart';
import '../widgets/menu.widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<TaskModel> tasks = TaskService.getTasks();
    return Scaffold(
      appBar: AppBar(
        actions: IconsAppBar(context),
      ),
      drawer: MenuWidget(),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          color: Color(0XFFF6F6F6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Image(image: AssetImage("images/tasks/logo.png"))
              Container(
                  margin: const EdgeInsets.only(bottom: 22.0, top: 32),
                  child: Image.asset("assets/images/logo.png")),
              Expanded(
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    return TaskCardWidget(task: tasks[index]);
                  }),
                  itemCount: tasks.length,
                  scrollDirection: Axis.vertical,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF7349FE),
        child: const Icon(
          Icons.add,
          color: Colors.white70,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => TaskPage())));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.red,
        ),
      ], currentIndex: 0),
    );
  }

  List<TaskCardWidget> generateTaskCardWidget() {
    List<TaskCardWidget> children = [];
    List<TaskModel> tasks = TaskService.getTasks();
    tasks.forEach(((element) {
      children.add(TaskCardWidget(task: element));
      print(element);
    }));

    return children;
  }
}
