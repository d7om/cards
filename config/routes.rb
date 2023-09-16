Rails.application.routes.draw do
  root 'card_generator#new'
  get 'card_generator', to: 'card_generator#new'
  post 'card_generator', to: 'card_generator#create', as: 'generate_card'
  get 'card_generator/show/', to: 'card_generator#show', as: "show"
  post 'card_generator/show/:file_path', to: 'card_generator#show', as: :show_generated_card
end