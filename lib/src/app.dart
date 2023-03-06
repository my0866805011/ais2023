import 'package:ais2023/src/bloc/login/login_bloc.dart';
import 'package:ais2023/src/pages/login/login_page.dart';
import 'package:ais2023/src/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final loginBloc = BlocProvider(create: (context) => LoginBloc());


    return MultiBlocProvider(
      providers:[],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: AppRoute.all,
        home: const LoginPage(),
      ),
    );
  }
}
