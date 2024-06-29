import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_razorpay/controller/paymentController.dart';

class PaymentUi extends StatelessWidget {
  PaymentController controller = Get.put(PaymentController());
  final amt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Task-2 Razorpay Integeration ")),
        body: Center(
            child: MaterialButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: "Enter the Amount",
                      content: Column(
                        children: [
                          TextFormField(
                            textAlign: TextAlign.center,
                            controller: amt,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 10),
                          MaterialButton(
                              onPressed: () {
                                Get.back();
                                controller.Payment(int.parse(amt.text));
                              },
                              child: Text(
                                "Pay",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.blue)
                        ],
                      ));
                },
                child:
                    Text("Click to Pay", style: TextStyle(color: Colors.white)),
                color: Colors.blue)));
  }
}
