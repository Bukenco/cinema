Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  scope defaults: { :format => :json } do
    get 'stats/modules',  to: 'stats#modules'
    get 'stats/top_modules',  to: 'stats#top_modules'
    get 'stats/top_learners',  to: 'stats#top_learners'

  end
end
