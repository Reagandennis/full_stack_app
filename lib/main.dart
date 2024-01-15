// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/material.dart';
import 'package:full_stack_app/Homepage.dart';
import 'package:hive/hive.dart' show Hive;
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('Habit_tracker');

  runApp(MaterialApp(
    home: FullstackApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class FullstackApp extends StatelessWidget {
  const FullstackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
