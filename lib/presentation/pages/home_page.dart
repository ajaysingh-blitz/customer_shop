import 'package:customer_shop/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var registry = JsonWidgetRegistry.instance;
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(
      const HomeEvent(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(builder: (context,state) {
      print('state data in home page ${state is HomeSuccessState ? state.data : ''} builder');
       return state is HomeSuccessState ? JsonWidgetData.fromDynamic(
           state.data[0],
           registry: registry)
           .build(context: context) : Container();

    }, listener: (context , state) {
    });
  }
}
