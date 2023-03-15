import 'package:eu/cubit/app_cubit_states.dart';
import 'package:eu/cubit/app_cubits.dart';
import 'package:eu/pages/Welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/nav_pages/detail_page.dart';
import '../pages/nav_pages/main_page.dart';

class AppCubitsLogics extends StatefulWidget {
  const AppCubitsLogics({super.key});

  @override
  State<AppCubitsLogics> createState() => _AppCubitsLogicsState();
}

class _AppCubitsLogicsState extends State<AppCubitsLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, State) {
        if (State is DetailStates) {
          return const DetailPage();
        }
        if (State is WelcomeState) {
          return const WelcomePage();
        }
        if (State is LoadedStates) {
          return const MainPage();
        }
        if (State is LoadingStates) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}
