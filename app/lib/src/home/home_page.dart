import 'package:flutter/material.dart';

import '../shared/widgets/user_image_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 28, 16, 16),
            child: Text(
              'Opções',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.sync),
            label: Row(
              children: [
                const Text('Sincronização'),
                const SizedBox(width: 10),
                Text(
                  '11/02/2023 às 16:16h',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.settings),
            label: Text('Configuração'),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('LISTINHA'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            children: [
              SegmentedButton(
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
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Nova Lista'),
        onPressed: () {},
      ),
    );
  }
}
