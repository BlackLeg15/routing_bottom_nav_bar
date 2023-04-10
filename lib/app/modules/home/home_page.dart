import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:routing_bottom_nav_bar/app/modules/home/home_controller.dart';
import 'package:routing_bottom_nav_bar/app/modules/home/home_controller_states.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    log(Modular.to.path);
    return Scaffold(
      body: AnimatedBuilder(
        animation: homeController,
        builder: (context, child) {
          if (homeController.state is HomeControllerLoadingState) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
          if (homeController.state is HomeControllerErrorState) {
            final message = (homeController.state as HomeControllerErrorState).message;
            return Center(
              child: Text(message),
            );
          }
          if (homeController.state is HomeControllerLoadedState) {
            final numbers = (homeController.state as HomeControllerLoadedState).numbers;
            return ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(numbers[index].toString()),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
