class EventsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :destroy, :edit, :update]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.new(event_parameter)
    if event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, notice:"削除しました"
  end

  def edit
  end

  def update
    if @event.update(event_parameter)
      redirect_to event_path(@event), notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def event_parameter
    params.permit(:title, :content, :start_time).merge(user_id: current_user.id)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end