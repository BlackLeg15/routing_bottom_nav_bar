import 'package:flutter_modular/flutter_modular.dart';
import 'package:routing_bottom_nav_bar/app/modules/home/home_controller.dart';
import 'package:routing_bottom_nav_bar/app/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((i) => HomeController(), export: true),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
