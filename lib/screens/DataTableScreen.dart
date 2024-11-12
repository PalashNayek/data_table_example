// data_table_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/data_view_model.dart';

class DataTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<DataViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable Example'),
      ),
      body: ChangeNotifierProvider<DataViewModel>(
        create: (_) => viewModel,
        child: Consumer<DataViewModel>(
          builder: (context, model, child) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Score')),
                ],
                rows: model.data
                    .map(
                      (data) => DataRow(cells: [
                    DataCell(Text(data.id.toString())),
                    DataCell(Text(data.name)),
                    DataCell(Text(data.score.toString())),
                  ]),
                )
                    .toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
