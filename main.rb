require_relative 'trading_bot'
require_relative 'ema'
require_relative 'sma' 

prices = Array.new(100) { rand(100..200) }
window = rand(10..20) 
ema_strategy = EMA.new(prices, window)
sma_strategy = SMA.new()
bot1 = TradingBot.new('TradingBot', ema_strategy)
bot2 = TradingBot.new('TradingBot', sma_strategy)
bot1.activate
bot2.activate

3.times do
  bot1.make_trade_decision(prices, window)
  bot2.make_trade_decision(prices, window)
end