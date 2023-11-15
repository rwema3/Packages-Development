import 'package:stripe_payment/stripe_payment.dart';

class StripeService {
  static init() {
    StripePayment.setOptions(
      StripeOptions(
