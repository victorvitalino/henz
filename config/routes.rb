Rails.application.routes.draw do



  resources :curriculums

  scope '/gestao' do 

    devise_for  :users, :path => '/', :controllers => {
      :sessions => 'sessions'
    }

    authenticate :user do 

      root 'dashboard#index', as: 'application_root'

      resources   :users,                 :path => 'funcionarios'
      resources   :jobs,                  :path => 'cargos'
      resources   :sectors,               :path => 'setores'

      resources   :vehicle_consumptions,  :path => 'veiculo_gastos'
      resources   :desk_supplies,         :path => 'apoios'
      resources   :vehicle_services,      :path => 'veiculo_servicos'
      resources   :vehicle_types,         :path => 'veiculo_tipos'
      resources   :vehicles,              :path => 'veiculos'

      resources   :payments,              :path => 'pagamentos'
      resources   :payment_types,         :path => 'pagamento_tipos'

      resources   :providers,             :path => 'fornecedores'
      resources   :provider_types,        :path => 'fornecedor_tipos'

      resources   :costs,                 :path => 'gastos'
      resources   :benefits,              :path => 'beneficios'
      resources   :footholds
      resources   :works,                 :path => 'obras'
      resources   :work_types,            :path => 'obra_tipos'
      resources   :affiliates,            :path => 'afiliacoes'

    end

  end

  root "home#index"
  get '/trabalhe-conosco',  to: 'home#trabalhe'
  get '/trajetoria',  to: 'home#trajetoria'
  get '/areas-atuacao',  to: 'home#areas-atuacao'
  get '/carreiras',  to: 'home#carreiras'
  get '/obras', to: 'home#obras'
end
