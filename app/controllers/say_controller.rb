
class SayController < ApplicationController
  require 'json'
  require 'open-uri'
  skip_before_filter :verify_authenticity_token 
 
  def hello
  end

  def goodbye
  end

  def bitcoin
    #source="http://blockchain.info/ticker"
    peso_rate_url = "http://rate-exchange.appspot.com/currency?from=USD&to=MXN"
    @btcusd=JSON.parse(open("http://blockchain.info/ticker").read)
    @usdmxn=JSON.parse(open(peso_rate_url).read)
    #@btcusd=NET::HTTP.get_response(URI.parse(source))
    @time = Time.now
  end
end
