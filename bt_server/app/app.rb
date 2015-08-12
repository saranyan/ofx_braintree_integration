module BtServer
  class App < Padrino::Application
    register Padrino::Mailer
    register Padrino::Helpers


    Braintree::Configuration.environment = :sandbox
    Braintree::Configuration.merchant_id = 'xx'
    Braintree::Configuration.public_key = 'xx'
    Braintree::Configuration.private_key = 'xx'

    enable :sessions


    get "/" do
     "Hello Demo!"
    end

    get "/payment" do
      @token = Braintree::ClientToken.generate
      erb :payment
    end



  end
end
