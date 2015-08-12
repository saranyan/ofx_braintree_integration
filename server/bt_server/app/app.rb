module BtServer
  class App < Padrino::Application
    register Padrino::Mailer
    register Padrino::Helpers


    Braintree::Configuration.environment = :sandbox
    Braintree::Configuration.merchant_id = 'xxx'
    Braintree::Configuration.public_key = 'xxx'
    Braintree::Configuration.private_key = 'xxx'

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
