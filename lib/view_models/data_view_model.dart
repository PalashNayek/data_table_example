// data_view_model.dart
import 'package:flutter/material.dart';

import '../models/data_model.dart';

class DataViewModel extends ChangeNotifier {
  List<DataModel> _data = [
    DataModel(id: 1, name: 'Alice', score: 85.5),
    DataModel(id: 2, name: 'Bob', score: 92.3),
    DataModel(id: 3, name: 'Charlie', score: 78.2),
    DataModel(id: 1, name: 'Alice', score: 85.5),
    DataModel(id: 2, name: 'Bob', score: 92.3),
    DataModel(id: 3, name: 'Charlie', score: 78.2),
    DataModel(id: 1, name: 'Alice', score: 85.5),
    DataModel(id: 2, name: 'Bob', score: 92.3),
    DataModel(id: 3, name: 'Charlie', score: 78.2),
  ];

  List<DataModel> get data => _data;

  void addData(DataModel newData) {
    _data.add(newData);
    notifyListeners();
  }
}
