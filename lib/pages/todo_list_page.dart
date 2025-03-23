import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma tarefa',
                        hintText: 'Ex. Estudar Flutter',
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      //foregroundColor: Colors.yellow,
                      backgroundColor: Color(0xff00d7f3),
                      padding: EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          4,
                        ), // Deixa menos arredondado
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 23,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero, //importante
                //physics: NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    title: Text('Tarefa 1'),
                    subtitle: Text('Data 1'),
                    leading: Icon(Icons.save, size: 30),
                    onTap: () {
                      print('Tarefa 1');
                    },
                  ),
                  ListTile(
                    title: Text('Tarefa 2'),
                    subtitle: Text('Data 2'),
                    leading: Icon(Icons.person, size: 30),
                    onTap: () {
                      print('Tarefa 2');
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Você possui 0 tarefas pendentes',
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      //foregroundColor: Colors.yellow,
                      backgroundColor: Color(0xff00d7f3),
                      padding: EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          4,
                        ), // Deixa menos arredondado
                      ),
                    ),
                    child: Text('Limpar tudo'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
