Rails.application.routes.draw do
  get 'fechas', to: 'fechas#listar', as: :fechas
  get 'fecha', to: 'fechas#mostrar', as: :fecha
  get 'automatico', to: 'fechas#automatico', as: :auto
  post 'automatico', to: 'fechas#automatico_crear'
  post 'agregar_comp_fecha', to: 'fechas#agregar_comp', as: :agregar_comp_fecha
  delete 'quitar_comp_fecha', to: 'fechas#quitar_comp', as: :quitar_comp_fecha
  

  root 'productos#listar'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
