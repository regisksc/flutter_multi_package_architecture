import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './checkout_controller.dart';

class CheckoutPage extends GetView<CheckoutController> {
  final dynamic? param;

  CheckoutPage({this.param});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Container(),
    );
  }
}
