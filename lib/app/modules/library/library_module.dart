import 'package:flutter_modular/flutter_modular.dart';

import 'library_controller.dart';
import 'library_page.dart';

class LibraryModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((i) => LibraryController(), export: true),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LibraryPage()),
      ];
}
