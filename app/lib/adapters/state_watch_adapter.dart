import 'package:flutter/material.dart';

class StateWatchAdapter extends StatelessWidget {
  const StateWatchAdapter(this.childCallback);

  final Widget Function() childCallback;

  @override
  /* Widget build(BuildContext context) => Obx(childCallback); */
  Widget build(BuildContext context) => Container();
}
