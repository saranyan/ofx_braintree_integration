# What
Openframeworks integration with Braintree (Uses Awesomium)

# Getting it working
in the app.rb, update credentials from BT sandbox/prod account
```
  Braintree::Configuration.environment = :sandbox
  Braintree::Configuration.merchant_id = 'xx'
  Braintree::Configuration.public_key = 'xx'
  Braintree::Configuration.private_key = 'xx'

```
