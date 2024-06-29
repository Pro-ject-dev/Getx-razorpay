import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentController extends GetxController {
  late Razorpay pay;
  @override
  void onInit() {
    pay = Razorpay();
    pay.on(Razorpay.EVENT_PAYMENT_SUCCESS, success);
    pay.on(Razorpay.EVENT_PAYMENT_ERROR, error);

    super.onInit();
  }

  void Payment(int amt) {
    var options = {
      "key": "rzp_test_xqG5Y9vDyfuT3t",
      "name": "Task 2",
      "amount": (amt).toInt() * 100,
      "currency": "INR"
    };
    try {
      pay.open(options);
    } catch (e) {
      Get.snackbar("Error", "Payment Failed !");
    }
  }

  void success(PaymentSuccessResponse s) {
    Get.snackbar("Sucesss",
        "Payment Successfully completed!\n Payment Id is:" + "${s.paymentId}");
  }

  void error(PaymentFailureResponse s) {
    Get.snackbar("Failed ", "Payment Failed !\n" + "${s.message}");
  }

  @override
  void onClose() {
    pay.clear();
    super.onClose();
  }
}
