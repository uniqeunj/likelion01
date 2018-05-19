  Rails.application.routes.draw do
  get '/utilities/' => 'utilities#index'
  get '/utilities/pick_lucky_numbers'
  get '/utilities/get_stock_info'
  get '/utilities/show_stock_info'
  
  # 보여줘라 - 홈에서 #뒤의 행동을 하게 하라
  root 'home#index'
  # get '/' => 'home#index' -> root 어쩌구랑 같은 말

  get '/animals/cat' => 'animals#cat'
  get '/animals/dog' => 'animals#dog'
  get '/animals/' => 'animals#index'
  get '/animals/bunny' => 'animals#bunny'

  get '/music/loveletter' => 'music#loveletter'
  get '/music/phonecert' => 'music#phonecert'
  get '/music/' => 'music#index'
end
