import 'package:stripe_payment/stripe_payment.dart';

class StripeService {
  static init() {
    StripePayment.setOptions(
      StripeOptions(
        publishableKey: 'your_publishable_key',
        merchantId: 'your_merchant_id',
