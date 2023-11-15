import 'package:flutter_test/flutter_test.dart';
import 'package:your_stripe_package/stripe_service.dart';

void main() {
  group('StripeService Tests', () {
    test('createPaymentMethod returns a valid result', () async {
      // Arrange
      StripeService.init();

