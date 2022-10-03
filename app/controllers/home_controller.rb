class HomeController < ApplicationController
  def index
       @api = StockQuote::Stock.new(api_key: 'sk_03de06d48e204c858c4b8980cd9484a0')

       @test = "test"
       if params[:ticker]
          @stock = StockQuote::Stock.quote(params[:ticker])
       end
  end

def about
end

end
