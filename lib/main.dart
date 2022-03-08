import 'package:flutter/material.dart';
import 'package:week_expenses/screens/home_screen.dart';

void main() {
  runApp(const WeekExpensesApp());
}

class WeekExpensesApp extends StatelessWidget {
  const WeekExpensesApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DefaultTabController(
        length: 2,
        child: HomeScreen(),
      ),
    );
  }
}
