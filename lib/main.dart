import 'dart:async';

import 'package:customer_shop/presentation/bloc/home_bloc.dart';
import 'package:customer_shop/utilities/app_bloc_observer.dart';
import 'package:customer_shop/utilities/go_router_init.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

import 'utilities/logger.dart';
import './injections.dart' as di;

void main() {
  logger.runLogging(
        () => runZonedGuarded(
          () {
        WidgetsFlutterBinding.ensureInitialized();
        Bloc.transformer = bloc_concurrency.sequential();
        Bloc.observer = const AppBlocObserver();
        di.init();

        runApp(const MyApp());
      },
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<HomeBloc>()),
        // BlocProvider(create: (_) => di.locator<SignInFormBloc>()),
        // BlocProvider(create: (_) => di.locator<ThemeCubit>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Customer Shop Dynamic Widget Rendering',
        routerConfig: routerInit,
      ),
    );
  }
}
