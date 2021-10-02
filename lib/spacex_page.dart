import 'package:flutter/material.dart';
import 'package:spacex_flutter/common/base_view.dart';
import 'package:spacex_flutter/common/base_view_model.dart';
import 'package:spacex_flutter/spacex_view_model.dart';

class SpaceXPage extends StatefulWidget {
  @override
  _SpaceXPageState createState() => _SpaceXPageState();
}

class _SpaceXPageState extends State<SpaceXPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BaseViewModel>(
      viewModel: SpaceXViewModel(),
    );
  }
}
