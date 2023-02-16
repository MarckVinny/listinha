import 'package:flutter/material.dart';

class AppStore {
  final themeMode = ValueNotifier(ThemeMode.system);
  final syncDate = ValueNotifier<DateTime?>(null);

  //*todo: construtor da classe
  AppStore();

  //*todo: iniciar a base de dados
  void init() {}

  //*todo: salvar os dados na base local
  void save() {}

  //*todo: modifica o valor do themeMode
  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  //*todo: sincroniza a data na base de dados
  void setSyncDate(DateTime date) {
    syncDate.value = date;
    save();
  }
}
