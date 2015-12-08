Rails.configuration.stripe = {
  :publishable_key => 'pk_test_lJZUUkpJpr0B1t4A5I8cf8Am',
  :secret_key      => 'sk_test_2u9cgp5lCEKRQFHfrcoRi1Ys'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]