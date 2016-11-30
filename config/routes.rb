Rails.application.routes.draw do
	root 'customers#home'
	get '/pb_send', to: 'customers#pb_send'
	get '/non_pb_send', to: 'customers#non_pb_send'
	get '/dais_send', to: 'customers#dais_send'
  	get :pb, to: 'customers#pb', as: :pb
  	get :non_pb, to: 'customers#non_pb', as: :non_pb
  	get :dais, to: 'customers#dais', as: :dais
end
