import 'dart:math';

import 'package:flutter/material.dart';
import 'package:routing_bottom_nav_bar/app/modules/home/home_controller_states.dart';

class HomeController extends ChangeNotifier {
  HomeControllerState state = const HomeControllerInitialState();

  HomeController() {
    init();
  }

  Future<void> init() async {
    if (state is! HomeControllerInitialState) return;
    final random = Random();
    state = const HomeControllerLoadingState();
    notifyListeners();
    return Future.delayed(const Duration(seconds: 5), () {
      state = HomeControllerLoadedState(List.generate(10, (index) => random.nextInt(100)));
      notifyListeners();
    });
  }
}
