import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:listinha/src/shared/Store/app_store.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final appStore = context.watch<AppStore>(
      (store) => store.syncDate,
    );

    final syncDate = appStore.syncDate.value;
    var syncDateText = 'nunca';

    if (syncDate != null) {
      final format = DateFormat('dd/MM/yyyy às hh:mmh');
      syncDateText = format.format(syncDate);
    }

    return NavigationDrawer(
      onDestinationSelected: (index) {
        if (index == 1) {
          Navigator.popAndPushNamed(context, '/config');
          //Navigator.of(context).pop();
          //Navigator.of(context).PushNamed('/config');
        }
      },
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
          label: SizedBox(
            width: 215,
            child: Row(
              children: [
                const Text('Sincronização'),
                const Spacer(),
                Text(
                  syncDateText,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
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
