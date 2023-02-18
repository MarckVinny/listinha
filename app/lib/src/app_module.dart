import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/configuration/configuration_page.dart';
import 'package:listinha/src/shared/Store/app_store.dart';
import 'package:listinha/src/shared/services/realm/realm_config.dart';
import 'package:realm/realm.dart';
import 'configuration/services/configuration_service.dart';
import 'home/home_module.dart';

class AppModule extends Module {
  @override
  //*todo: implement binds
  List<Bind> get binds => [
        //! Versão antiga
        // Bind.singleton((i) => AppStore())

        //? Versão nova a partir de março/2023
        //? Flutter_Modular: ^6.0.0-alpha.5
        Bind.instance<Realm>(Realm(config)),
        // AutoBind.instance(Realm.new),
        AutoBind.factory<ConfigurationService>(ConfigurationServiceImpl.new),
        AutoBind.singleton(AppStore.new),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}
