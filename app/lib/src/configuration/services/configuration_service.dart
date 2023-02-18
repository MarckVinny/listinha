import 'package:listinha/src/shared/services/realm/configuration_model.dart';
import 'package:realm/realm.dart';

abstract class ConfigurationService {
  ConfigurationModel getConfiguration();
  void saveConfiguration(
    String themeModeName,
    DateTime? syncDate,
  );
  void deleteAll();
}

class ConfigurationServiceImpl implements ConfigurationService {
  final Realm realm;

  ConfigurationServiceImpl(this.realm);

  @override
  //*todo: pega o primeiro item da lista
  ConfigurationModel getConfiguration() {
    return realm.all<ConfigurationModel>().first;
  }

  @override
  void saveConfiguration(String themeModeName, DateTime? syncDate) {
    final model = getConfiguration();
    //*todo: salva o Tema e a data no Banco de Dados
    realm.write(() {
      model.syncDate = syncDate;
      model.themeModeName = themeModeName;
    });
  }

  @override
  void deleteAll() {
    realm.deleteAll();
  }
}
