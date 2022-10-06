class HomeController < ApplicationController
  def index
    
       @api = StockQuote::Stock.new(api_key: 'sk_03de06d48e204c858c4b8980cd9484a0')


       if params[:ticker] == ""
          @nothing = "Hey! You forgot to enter a Symbol
          "
          puts @nothing
       elsif params[:ticker]
          @hello_message = "Welcome to Rails"
          @stock = StockQuote::Stock.quote(params[:ticker])
          puts @stock.inspect
          if !@stock
            @error = "Hey! That stock symbol doesn't exist"
          end
       end

       
  end

def about
end

end
