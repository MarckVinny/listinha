import 'package:flutter/material.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LISTINHA'),
      ),
      body: ListView(
        children: [
          Text(
            'Configurações',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 23,
          ),
          Text(
            'Tema',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          RadioListTile<ThemeMode>(
            title: Text(
              'Sistema',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            value: ThemeMode.light,
            groupValue: ThemeMode.light,
            onChanged: (mode) {},
          ),
        ],
      ),
    );
  }
}
