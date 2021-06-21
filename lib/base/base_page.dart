
import 'package:flutter/material.dart';
import 'base_state.dart';

mixin BasePage<Page extends BaseStatefulWidget> on BaseState<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: Container(
          child: body(),
          color: Colors.amber,
        ));
  }

  Widget body();
}

