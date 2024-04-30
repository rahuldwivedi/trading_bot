require_relative 'trading_strategy'

# SMA Class
class SMA < TradingStrategy
  
  def calculate_decision(prices, sma_window)

    return :hold unless prices.length >= sma_window

    if prices.length >= sma_window
      short_term_sma = prices[-sma_window..].sum / sma_window
      long_term_sma = prices.sum / prices.length
    end

    action = calculate_action(short_term_sma, long_term_sma)

    action
  end

  private

  def calculate_action(short_term_sma, long_term_sma)
    if short_term_sma > long_term_sma
      :buy
    elsif short_term_sma < long_term_sma
      :sell
    else
      :hold
    end
  end
end