import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: StatefulBuilder(
        builder: (context, setState) => BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (value) {
            switch (value) {
              case 0:
                if (pageIndex != 0) {
                  setState(() {
                    pageIndex = 0;
                  });
                  Modular.to.navigate('/home/');
                }
                break;
              case 1:
                if (pageIndex != 1) {
                  setState(() {
                    pageIndex = 1;
                  });
                  Modular.to.navigate('/library/');
                }
                break;
              default:
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: 'Library',
            ),
          ],
        ),
      ),
    );
  }
}
