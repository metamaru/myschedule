class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]

  def index
    @events = Event.includes(:user).order(start_time: :asc)
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
      puts @event.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @event.update(event_params)
    if @event.save
      redirect_to root_path
    else
      puts @event.error.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to root_path
  end

  private
  def event_params
    params.require(:event).permit(:title, :comment, :location, :start_time, :end_time, :all_day, :category_id).merge(user_id: current_user.id)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end