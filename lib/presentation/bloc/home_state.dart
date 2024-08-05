part of 'home_bloc.dart';

@immutable
sealed class HomeState{}

class HomeInitialState extends HomeState {
  HomeInitialState();
}

class HomeSuccessState extends HomeState {
  List<Map<dynamic, dynamic>> data;
  HomeSuccessState(this.data);
}

class HomeErrorState extends HomeState {
  final Object error;
  final String messages;
  HomeErrorState(this.error, this.messages);
}


