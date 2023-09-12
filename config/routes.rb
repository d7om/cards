Rails.application.routes.draw do
  root 'card_generator#new'
  post 'card_generator/generate_card', to: 'card_generator#create', as: 'generate_card'
end