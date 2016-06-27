#
class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  # GET /events/1.json
  def show
    render json: @event
  end

  # GET /users/:id/events
  # Retrieve a User's events
  def user_events
    @events = Event.all
    @my_events = @events.select { |e| e.user_id == params[:id].to_i }
    render json: @my_events
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      head :no_content
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy

    head :no_content
  end

  # GET /events/:data
  def search
    @events = Event.select { |e|
    if e.name.downcase.include? params[:data].downcase
      e
    elsif e.id == params[:data].to_i
      e
    end  }

    render json: @events
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :date, :location, :user_id)
  end
end
