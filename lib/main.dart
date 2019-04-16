import 'package:flutter/material.dart';
import 'package:helloworld/bloc_provider.dart';
import 'package:helloworld/src/home/home.dart';
import 'package:helloworld/src/home/home_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        bloc: HomeBloc(),
        child: FirestoreCRUDPage(),
      ),
    );
  }
}
