// service_locator.dart
import 'package:get_it/get_it.dart';
import '../view_models/data_view_model.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton(() => DataViewModel());
}
