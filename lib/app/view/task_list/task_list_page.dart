
import 'package:flutter/material.dart';
import 'package:lista_tareas/app/view/components/h1.dart';
import 'package:lista_tareas/app/view/components/shape.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({Key? key}): super(key: key);

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue, // Cambia esto al color que desees
              child: Row(
                children: const [Shape()],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Column(
              children: [
                const SizedBox(height: 79),
                Image.asset(
                  'assets/images/tasks-list-image.png',
                  width: 141,
                  height: 129,
                ),
                const SizedBox(height: 13),
                const H1('Completa tus tareas'),
                const SizedBox(height: 40),
                Center(child: Text('Hola, el contador es $count')),
              ],
            ),
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add, size: 50),
      ),
    );
  }
}


