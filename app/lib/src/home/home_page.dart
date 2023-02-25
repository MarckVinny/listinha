import 'package:flutter/material.dart';
import 'package:listinha/src/shared/services/realm/models/task_model.dart';
import 'package:realm/realm.dart';

import '../shared/widgets/user_image_button.dart';
import 'widgets/custom_drawer.dart';
import 'widgets/task_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('LISTINHA'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            ListView.separated(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 90),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                );
              },
              itemCount: 100,
              itemBuilder: (_, index) {
                final board = TaskBoard(
                  Uuid.v4(),
                  'Nova Lista de Tarefas',
                  tasks: [
                    Task(Uuid.v4(), '', complete: true),
                    Task(Uuid.v4(), '', complete: true),
                    Task(Uuid.v4(), ''),
                    Task(Uuid.v4(), ''),
                  ],
                );
                return TaskCard(
                  board: board,
                  height: 140,
                );
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SegmentedButton(
                  segments: const [
                    ButtonSegment(
                      value: 0,
                      label: Text('Todos'),
                    ),
                    ButtonSegment(
                      value: 1,
                      label: Text('Pendentes'),
                    ),
                    ButtonSegment(
                      value: 2,
                      label: Text('Concluídos'),
                    ),
                    ButtonSegment(
                      value: 3,
                      label: Text('Desativados'),
                    ),
                  ],
                  selected: const {0},
                  onSelectionChanged: (values) {},
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Nova Lista'),
        onPressed: () {
          Navigator.of(context).pushNamed('./edit');
        },
      ),
    );
  }
}
