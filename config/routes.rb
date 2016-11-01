Rails.application.routes.draw do
  root 'inquiry#index'
  get 'inquiry/index' => 'inquiry#index'              # 入力画面
  get 'inquiry/new' => 'inquiry#new'              # 入力画面
  post 'inquiry/confirmation' => 'inquiry#confirmation'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'
end

