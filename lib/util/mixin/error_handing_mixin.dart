import 'package:demo/base/base_state.dart';
import 'package:flutter/material.dart';

mixin ErrorHandlingMixin<Page extends BaseStatefulWidget> on BaseState<Page> {
  @override
  void initState() {
    super.initState();

  }

  void showErrorSnackbar(String event, ScaffoldState context) {
    if (event != null) {
      context.showSnackBar(new SnackBar(
        content: new Text(event),
      ));
    }
  }
}