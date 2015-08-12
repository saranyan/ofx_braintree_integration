# What
Openframeworks integration with Braintree

# Why
Openframeworks is a visualization framework used by thousands of digital artists to build amazing things. Several of these projects impact the world in big ways. This project is an attempted first step to provide a way to easily integrate payments into this framework. This will allow contributions, donations, etc from interested people.

# How
This solution uses the following awesome technologies
- Awesomonium framework (for integrating HTML UI elements in c++ applications) http://www.awesomium.com/
- ofxAwesomonium add on (https://github.com/mpcdigital/ofxAwesomium/)
- Braintree drop-in for payment processing https://www.braintreepayments.com/features/drop-in

# Implementation
BT drop in requires a server to generate token, which can be used to securely display a form via Braintree's javascript library.

Both the client and server side code are implemented on the server side (Look at the included ruby server - this can be implemented in a language of your choice. This is intended to be more of an example showing what needs to be done).


To start the ruby server

```
gem install padrino
cd bt_server
padrino start
```

Open the Openframeworks project in xcode and compile.
![screenshot](http://i.imgur.com/2LeB4MZ.png "Screenshot")



# Getting it working
in the app.rb, update credentials from BT sandbox/prod account
```
  Braintree::Configuration.environment = :sandbox
  Braintree::Configuration.merchant_id = 'xx'
  Braintree::Configuration.public_key = 'xx'
  Braintree::Configuration.private_key = 'xx'

```
