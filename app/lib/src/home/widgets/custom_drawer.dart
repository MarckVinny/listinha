import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
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
    );
  }
}
