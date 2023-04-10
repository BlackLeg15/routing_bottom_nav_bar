import 'package:flutter_modular/flutter_modular.dart';

import 'modules/root/root_module.dart';

class AppModule extends Module {


  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: RootModule()),
      ];
}
