import 'package:batch_35d_classwork/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
