import 'package:data_table_example/di/setup_locator.dart';
import 'package:data_table_example/screens/DataTableScreen.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DataTable Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DataTableScreen(),
    );
  }
}
