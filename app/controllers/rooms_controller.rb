class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :destroy, :reset, :reveal]

  def show; end
  def index = @rooms = Room.all
  def new = @room = Room.new
  def reset = @room.members.update_all estimation: nil
  def reveal; end

  def create
    @room = Room.new(room_params)

    if @room.save
      redirect_to @room, notice: "Room was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @room.destroy!
    redirect_to rooms_url, notice: "Room was successfully destroyed.", status: :see_other
  end

  private

  def set_room = @room = Room.find(params[:id])
  def room_params = params.fetch(:room, {})
end
