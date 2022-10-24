import 'package:flutter/material.dart';
import 'package:task3/api/ui/screens/AddList.dart';
import 'package:task3/api/ui/screens/ListScreen.dart';

import 'api/ui/screens/EditList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo List',
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: "/",
      routes: {
        "/": (context) => ListScreen(),
        "/add": (context) => const AddList(),
        "/edit": (context) => const EditList(),
      },
    );
  }
}
