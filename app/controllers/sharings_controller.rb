#
class SharingsController < ApplicationController
  before_action :set_sharing, only: [:show, :update, :destroy]
  def index
    @sharings = Sharing.all

    render json: @sharings
  end
  def create
    @sharing = Sharing.new(sharing_params)

    if @sharing.save
      render json: @sharing, status: :created, location: @sharing
    else
      render json: @sharing.errors, status: :unprocessable_entity
    end
  end

  def events
    @sharings = Sharing.select { |s| s.event_id = params[:id] }


    render json: @sharings
  end

  def my_events
    @sharings = Sharing.select { |s|
      if s.profile_id == params[:id].to_i
      s
      elsif s.event.user_id == params[:user_id].to_i
      s
      end
    }

    render json: @sharings
  end

  def destroy
    @sharing.destroy

    head :no_content
  end

  private

  def set_sharing
    @sharing = Sharing.find(params[:id])
  end

  private

  def sharing_params
    params.require(:sharing).permit(:profile_id, :event_id)
  end
end
