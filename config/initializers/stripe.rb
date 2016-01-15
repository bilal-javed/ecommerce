Rails.configuration.stripe = {
  # :publishable_key => ENV['PUBLISHABLE_KEY'],
  # :secret_key      => ENV['SECRET_KEY']

  :publishable_key => 'pk_test_cBendMLNqDqwrlZdHdkoPHqH',
  :secret_key      => 'sk_test_vTTVF6ienV05Mnk9JUIWuVFi'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]



# Stripe.api_key = "sk_test_vTTVF6ienV05Mnk9JUIWuVFi"
# STRIPE_PUBLIC_KEY = "pk_test_cBendMLNqDqwrlZdHdkoPHqH"