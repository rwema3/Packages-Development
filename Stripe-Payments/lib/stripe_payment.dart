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
      PaymentMethod paymentMethod = await StripePayment.paymentRequestWithCardForm(
        CardFormPaymentRequest(),
      );

      // Now you can send the paymentMethod.id to your server to create a charge or save it for later use
      return {'success': true, 'paymentMethodId': paymentMethod.id};
    } catch (error) {
      print('Error creating PaymentMethod: $error');
      return {'success': false, 'error': error.toString()};
    }
  }
}