class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks
  def self.new_form_lookup(ticker_symbol)
    StockQuote::Stock.new(api_key: 'sk_366a339ab2db47f5aaba40723cf94d40')
    begin
      looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
      #only need new keyword to create stock object
      new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price)
    rescue Exception => e
      return nil
    end
  end

  def self.find_by_ticker(ticker_symbol)
    where(ticker: ticker_symbol).first
  end

end
