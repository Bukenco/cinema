Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  scope defaults: { :format => :json } do
    get 'owners/movie_catalog',  to: 'owners#movie_catalog'
    get 'owners/session_slot',  to: 'owners#session_slot'
    get 'owners/venue',  to: 'owners#venue'

    post 'owners/create_session', to: 'owners#create_session'
    put 'owners/update_session', to: 'owners#update_session'
  end
end
