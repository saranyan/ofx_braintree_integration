module BtServer
  class App < Padrino::Application
    register Padrino::Mailer
    register Padrino::Helpers


    Braintree::Configuration.environment = :sandbox
    Braintree::Configuration.merchant_id = '8fzprjzxrgdnz3zp'
    Braintree::Configuration.public_key = 'kdt8zmgfps2my25f'
    Braintree::Configuration.private_key = 'ff4189c071d6d9ece834e2352c96d812'

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
