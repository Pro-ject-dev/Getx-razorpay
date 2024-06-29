import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:task_razorpay/view/paymentUi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: PaymentUi());
  }
}

//razorpay apikey:rzp_test_xqG5Y9vDyfuT3t
