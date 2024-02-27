class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new, atatus: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :comment, :location, :start_time, :end_time, :all_day, :category_id).merge(user_id: current_user.id)
  end
end
