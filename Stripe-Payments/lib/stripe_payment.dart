import 'package:stripe_payment/stripe_payment.dart';

class StripeService {
  static init() {
    StripePayment.setOptions(
      StripeOptions(
        publishableKey: 'your_publishable_key',
        merchantId: 'your_merchant_id',
        androidPayMode: 'test', // or 'production'
      ),
    );
  }

  static Future<Map<String, dynamic>> createPaymentMethod() async {
    try {
