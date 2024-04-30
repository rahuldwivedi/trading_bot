# require_relative 'trading_strategy'
require_relative 'ema'
require_relative 'sma'

class TradingBot
  def initialize(name, strategy)
    @name = name
    @strategy = strategy
    @active = false
  end

  def activate
    @active = true
  end

  def deactivate
    @active = false
  end

  def set_strategy(strategy)
    @strategy = strategy
  end

  def make_trade_decision(prices, window)
    if @active
      decision = @strategy.calculate_decision(prices, window)
      puts "#{@name} using #{@strategy.class} trading strategy and decided to #{decision}"
    end
  end
end