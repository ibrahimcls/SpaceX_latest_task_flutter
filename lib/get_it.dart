import 'package:get_it/get_it.dart';
import 'package:spacex_flutter/common/repositories/app_repository.dart';

GetIt getIt = GetIt.asNewInstance();

void getItSetup() async {
  getIt.registerLazySingleton(() => AppRepository());
}
