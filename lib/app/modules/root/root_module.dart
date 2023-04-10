import 'package:flutter_modular/flutter_modular.dart';
import 'package:routing_bottom_nav_bar/app/modules/root/root_page.dart';

import '../home/home_module.dart';
import '../library/library_module.dart';

class RootModule extends Module {
  @override
  List<Module> get imports => [HomeModule()];

  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const RootPage(), children: [
          ModuleRoute('/library', module: LibraryModule()),
          ModuleRoute('/home', module: HomeModule()),
        ]),
      ];
}
