import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

import '../../configuration/services/configuration_service.dart';

class AppStore {
  final themeMode = RxNotifier(ThemeMode.system);
  final syncDate = RxNotifier<DateTime?>(null);
  final ConfigurationService _configurationService;

  //*todo: construtor da classe
  AppStore(this._configurationService) {
    init();
  }

  //*todo: iniciar a base de dados
  void init() {
    final model = _configurationService.getConfiguration();
    syncDate.value = model.syncDate;
    themeMode.value = _getThemeModeByName(model.themeModeName);
  }

  //*todo: salvar os dados na base local
  void save() {
    _configurationService.saveConfiguration(
      themeMode.value.name,
      syncDate.value,
    );
  }

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

  //*todo: apaga o cache
  void deleteApp() {
    _configurationService.deleteAll();
  }

  ThemeMode _getThemeModeByName(String name) {
    return ThemeMode.values.firstWhere((mode) => mode.name == name);
  }
}
