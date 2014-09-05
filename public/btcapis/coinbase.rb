#!/usr/bin/env ruby

require 'json'
require 'open-uri'

coinbasexng = 'https://coinbase.com/api/v1/currencies/exchange_rates'

@btcmxn = JSON.parse(open(coinbasexng).read)



puts @btcmxn["btc_to_mxn"]

puts @btcmxn["mxn_to_btc"]
