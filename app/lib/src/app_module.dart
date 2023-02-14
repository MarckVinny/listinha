import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/configuration/configuration_page.dart';
import 'package:listinha/src/shared/Store/app_store.dart';
import 'home/home_module.dart';

class AppModule extends Module {
  @override
  //*todo: implement binds
  List<Bind<Object>> get binds => [
        //! Versão antiga
        // Bind.singleton((i) => AppStore())

        //? Versão nova a partir de março/2023
        //? Flutter_Modular: ^6.0.0-alpha.5
        AutoBind.singleton(AppStore.new)
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
