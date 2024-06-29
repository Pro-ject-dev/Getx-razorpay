import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_razorpay/controller/paymentController.dart';

class PaymentUi extends StatelessWidget {
  PaymentController controller = Get.put(PaymentController());
  final amt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Task-2 Razorpay Payment Integeration with Getx")),
        body: Center(
            child: MaterialButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: "Enter The Amount",
                      content: Column(
                        children: [
                          TextFormField(
                            controller: amt,
                          ),
                          MaterialButton(
                              onPressed: () {
                                controller.Payment(int.parse(amt.text));
                              },
                              child: Text("Pay"))
                        ],
                      ));
                },
                child: Text("Click to Pay"),
                color: Colors.blue)));
  }
}
