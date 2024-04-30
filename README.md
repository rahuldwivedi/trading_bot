# Trading Bot

# SMA
This is a simple Ruby class representing a trading bot that makes buy, sell, or hold decisions based on the Relative Strength Index (RSI) indicator.

# Exponential Moving Average (EMA)
The Exponential Moving Average (EMA) is a popular technical analysis indicator used in trading to identify trends and potential entry and exit points. It calculates the EMA by giving more weight to recent prices, smoothing out fluctuations.

## Usage

To make a trading decision based on market data:

```ruby
	ruby main.rb
```

```ruby
# Simulate price updates
prices = Array.new(100) { rand(100..200) }
window = rand(10..20) 
ema_strategy = EMA.new(prices, window)
sma_strategy = SMA.new(prices, window)

# Initialize the `TradingBot` class by providing a name and a EMA trading strategy

bot1 = TradingBot.new('TradingBot', ema_strategy)

# Initialize the `TradingBot` class by providing a name and a SMA trading strategy
bot2 = TradingBot.new('TradingBot', sma_strategy)

#activating bot
bot1.activate
bot2.activate

3.times do
  bot1.make_trade_decision(prices, window)
  bot2.make_trade_decision(prices, window)
end

# deactivate bot
bot1.deactivate
bot2.deactivate
```
