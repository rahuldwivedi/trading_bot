require_relative 'trading_strategy'

class EMA < TradingStrategy
  def initialize(prices, window)
    @multiplier = 2.0 / (window + 1)
    @ema = calculate_initial_ema(prices, window)
  end

  def calculate_decision(prices, window)
    prices.each do |price|
      @ema = (price - @ema) * @multiplier + @ema
    end

    @ema > prices.last ? 'buy' : (@ema < prices.last ? 'sell' : 'hold') 
  end

  private

  def calculate_initial_ema(prices, window)
    prices[0...window].sum / window.to_f
  end  
end