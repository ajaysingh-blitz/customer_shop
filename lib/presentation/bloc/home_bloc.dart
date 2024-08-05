import 'package:bloc/bloc.dart';
import 'package:customer_shop/domain/usecase/home_page_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomePageUseCase _getHomePageData;

  final _jsonResponse = List<Map>.empty(growable: true);
  List<Map> get jsonResponse => _jsonResponse.toList();

  HomeBloc(this._getHomePageData) : super(HomeInitialState()) {
    on<HomeEvent>((event, emit) async {
      var result = await _getHomePageData.execute();
      result.fold(
            (failure) {
              emit(HomeErrorState(failure.message, 'error'));
        },
            (data) {
              print('response in bloc $data');
              _jsonResponse.add(data);
              emit(HomeSuccessState(_jsonResponse));
        },
      );
    });
  }
}
