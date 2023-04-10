abstract class HomeControllerState {
  const HomeControllerState();
}

class HomeControllerInitialState extends HomeControllerState {
  const HomeControllerInitialState();
}

class HomeControllerLoadingState extends HomeControllerState {
  const HomeControllerLoadingState();
}

class HomeControllerLoadedState extends HomeControllerState {
  final List<int> numbers;

  const HomeControllerLoadedState(this.numbers);
}

class HomeControllerErrorState extends HomeControllerState {
  final String message;

  const HomeControllerErrorState(this.message);
}
