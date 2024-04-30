class TradingStrategy
  def calculate_decision(prices, window)
    raise NotImplementedError, 'Subclasses must implement this method'
  end
end