import 'package:flutter/material.dart';
import 'package:lista_tareas/app/view/components/h1.dart';
import 'package:lista_tareas/app/view/components/shape.dart';
import 'package:lista_tareas/app/view/task_list/task_list_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: const [
              Shape(),
            ],
          ),
          const SizedBox(height: 79),
          Image.asset(
            'assets/images/onboarding-image.png',
            width: 141,
            height: 129,
          ),
          const SizedBox(height: 99),
          const H1('Mi nueva lista de tareas'),
          const H1('Esta es una nueva tarea'),
          const H1('Esta no es una nueva tarea'),
          const H1('Esta es una nueva por 2 tarea'),
          const H1('Lo nuevo'),
          const H1('Lo nuevox2'),
          const SizedBox(height: 21),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return TaskListPage();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'La mejor forma para que no se te olvide nada es anotarlo. Guardar tus tareas y ve completando poco a poco para aumentar tu productividad',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
