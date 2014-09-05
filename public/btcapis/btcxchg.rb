#!/usr/bin/env ruby

require 'json'
require 'open-uri'

usd_to_mxn_url = 'http://rate-exchange.appspot.com/currency?from=USD&to=MXN'
btc_to_usd_url = 'http://blockchain.info/ticker'

@btcusd = JSON.parse(open(btc_to_usd_url).read)
@usdmxn = JSON.parse(open(usd_to_mxn_url).read)

#puts @usdmxn

btcmxn = @btcusd["USD"]["last"] * @usdmxn["rate"]

puts btcmxn.round(2)

puts btcmxn
