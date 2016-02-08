class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.new(event_params)
    if event.save
      redirect_to events_path
    else
      flash[:warning] = event.errors.full_messages.join(". ")
      redirect_to new_event_path
    end
  end

  def event_params
    params.require(:event).permit(:name, :venue, :location, :description, :date, :time)
  end

end
