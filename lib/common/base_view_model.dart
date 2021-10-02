import 'package:flutter/material.dart';

import 'package:spacex_flutter/common/repositories/app_repository.dart';
import 'package:spacex_flutter/get_it.dart';

abstract class BaseViewModel extends ChangeNotifier {
  late BuildContext context;

  bool _isLoading = false;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool get isLoadingGet => _isLoading;

  final AppRepository appRepository = getIt<AppRepository>();

  void setContext(BuildContext context) {
    this.context = context;
  }

  void init();
}
