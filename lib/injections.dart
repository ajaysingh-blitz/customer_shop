import 'package:customer_shop/data/datasource/home_page_data_source.dart';
import 'package:customer_shop/data/repository/home_page_repository_impl.dart';
import 'package:customer_shop/domain/repositories/home_page_repositories.dart';
import 'package:customer_shop/domain/usecase/home_page_use_case.dart';
import 'package:customer_shop/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  //TODO: Data sources
  final authRemoteDataSource = HomePageDataSourceImpl();
  locator.registerLazySingleton<HomePageRemoteDataSource>(
        () => authRemoteDataSource,
  );

  // Repositories
  final homePageRepository = HomePageRepositoryImpl(locator());
  locator.registerLazySingleton<HomePageRepository>(
        () => homePageRepository,
  );

  // Use cases
  final homePage = HomePageUseCase(locator());
  locator.registerLazySingleton(
        () => homePage,
  );

  final authenticatorWatcherBloc = HomeBloc(locator());
  locator.registerLazySingleton(
        () => authenticatorWatcherBloc,
  );

  //TODO:  BLoCs
  // final authenticatorWatcherBloc = AuthenticatorWatcherBloc();
  // locator.registerLazySingleton(
  //       () => authenticatorWatcherBloc,
  // );

  // final signInFormBloc = SignInFormBloc(locator());
  // locator.registerLazySingleton(
  //       () => signInFormBloc,
  // );

  // final themeCubit = ThemeCubit();
  // locator.registerLazySingleton(
  //       () => themeCubit,
  // );
}
