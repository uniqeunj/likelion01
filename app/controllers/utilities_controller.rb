class UtilitiesController < ApplicationController
  def index
  end

  def pick_lucky_numbers
    # to_a. = to array = 1부터 45까지의 숫자를 array로 바꿔라 -> .sample = 그중 6개 뽑아라 
      # @lucky_numbers = (1..45).to_a.sample 6
      numbers = (1..45).to_a
      random_numbers = numbers.sample 6
      # .sort -> 오름차순으로 정렬
      @lucky_numbers = random_numbers.sort
      # @lucky_numbers - (1..45).to_a.sample(6).sort 
      # 6에 괄호를 넣는 이유: 뒤에 붙는 코드가 있기 때문
  end

  def get_stock_info
      
  end
  
  def show_stock_info
    inputs = [
      params[:company_code1], 
      params[:company_code2], 
      params[:company_code3]
      ]
    @stocks =  StockQuote::Stock.quote(inputs)
  end
end
