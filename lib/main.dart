import 'package:eu/cubit/app_cubit_logics.dart';
import 'package:eu/cubit/app_cubits.dart';
import 'package:eu/services/data_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp()) ;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: DataServices()
        ),
        child: AppCubitsLogics()
      ),

    );
  }
}

