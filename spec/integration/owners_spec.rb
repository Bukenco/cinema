require 'swagger_helper'

describe 'data lists', type: :request do

  path '/owners/movie_catalog' do
    get 'Returns list of movies' do
      tags 'Owner'
      consumes 'application/json'

      #parameter({
      #              :in => :header,
      #              :type => :string,
      #              :name => :Authorization,
      #              :required => true,
      #              :description => 'Client token'
      #          })

      response '200', 'OK' do
        schema type: :object,
               properties: {
                   list: {
                       type: :array,
                       items: {
                           properties: {
                               id:      { type: :number },
                               name:    { type: :string },
                               imdb_id: { type: :string }
                           }

                       }
                   }
               }

        run_test!
      end

      response '404', 'Not found' do
        schema type: :object,
               properties: {}
        run_test!
      end

    end
  end

  path '/owners/session_slot' do
    get 'Returns list of session slots' do
      tags 'Owner'
      consumes 'application/json'

      #parameter({
      #              :in => :header,
      #              :type => :string,
      #              :name => :Authorization,
      #              :required => true,
      #              :description => 'Client token'
      #          })

      response '200', 'OK' do
        schema type: :object,
               properties: {
                   list: {
                       type: :array,
                       items: {
                           properties: {
                               name:        { type: :string },
                               start_date:  { type: :string },
                               end_date:    { type: :string }
                           }

                       }

                   }
               }

        run_test!
      end

      response '404', 'Not found' do
        schema type: :object,
               properties: {}
        run_test!
      end

    end
  end

  path '/owners/venue' do
    get 'Returns list of venues' do
      tags 'Owner'
      consumes 'application/json'

      #parameter({
      #              :in => :header,
      #              :type => :string,
      #              :name => :Authorization,
      #              :required => true,
      #              :description => 'Client token'
      #          })

      response '200', 'OK' do
        schema type: :object,
               properties: {
                   list: {
                       type: :array,
                       items: {
                           properties: {
                               name:    { type: :number },
                               id_name: { type: :number }
                           }
                       }
                   }
               }

        run_test!
      end

      response '404', 'Not found' do
        schema type: :object,
               properties: {}
        run_test!
      end

    end
  end

  path '/owners/create_session' do
    post 'Create movie session' do
      tags 'Owner'
      consumes 'application/json'

      #parameter({
      #              in: :header,
      #              type: :string,
      #              name: :Authorization,
      #              required: true,
      #              description: 'JWT token'
      #          })

      parameter name: :params, in: :body, schema: {
          type: :object,
          properties: {
              movie_id: { type: :integer },
              venue_id: { type: :integer },
              session_slot_id: { type: :integer },
              session_date: { type: :string },
              price: { type: :string }
          }
      }

      response '201', 'ok' do
        schema type: :object,
               properties: {
                   success: { type: :boolean }
               }

        run_test!
      end

      response '400', 'Bad request' do
        schema type: :object,
               properties: {}
        run_test!
      end
    end
  end

  path '/owners/update_session' do
    put 'Update movie session' do
      tags 'Owner'
      consumes 'application/json'

      #parameter({
      #              in: :header,
      #              type: :string,
      #              name: :Authorization,
      #              required: true,
      #              description: 'JWT token'
      #          })

      parameter name: :params, in: :body, schema: {
          type: :object,
          properties: {
              id:               { type: :integer },
              movie_id:         { type: :integer },
              venue_id:         { type: :integer },
              session_slot_id:  { type: :integer },
              session_date:     { type: :string },
              price:            { type: :string }
          }
      }

      response '201', 'ok' do
        schema type: :object,
               properties: {
                   success: { type: :boolean }
               }

        run_test!
      end

      response '404', 'Not Found' do

        run_test!
      end

    end
  end

end
