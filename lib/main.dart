import 'package:flutter/material.dart';
import 'package:state_management/screeen/my_home_page.dart';
import 'package:state_management/state/my_home_state.dart';
import 'package:state_management/view_model/my_home_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

final myHomePageProvider = StateNotifierProvider<MyHomePageStateNotifier, MyHomePageState>
  ((ref) => MyHomePageStateNotifier());