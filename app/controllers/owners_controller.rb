class OwnersController < ApplicationController
  def movie_catalog
    service = Management::CatalogServices.new(service_params)
    service.movies
    rest_respond_service service
  end

  def session_slot
    service = Management::CatalogServices.new(service_params)
    service.slots
    rest_respond_service service
  end

  def venue
    service = Management::CatalogServices.new(service_params)
    service.venues
    rest_respond_service service
  end

  def movie_session
    service = Management::SessionServices.new(service_params)
    service.movie_sessions
    rest_respond_service service
  end

  def create_session
    service = Management::SessionServices.new(service_params)
    service.create
    rest_respond_service service
  end

  def update_session
    service = Management::SessionServices.new(service_params)
    service.update
    rest_respond_service service
  end

  private

  def service_params
    params.permit(:id, :movie_id, :venue_id, :session_slot_id, :session_date, :price)
  end
end
