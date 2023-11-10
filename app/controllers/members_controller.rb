class MembersController < ApplicationController
  def new = @member = Member.new(room_id: params[:room_id])

  def create
    @member = Member.create(member_params)
    return render :new, status: :unprocessable_entity unless @member.persisted?

    session[:member_id] = @member.id

    Turbo::StreamsChannel.broadcast_append_to(
      current_member.room,
      target: @member.room,
      partial: 'members/member',
      locals: { member: @member }
    )

    redirect_to @member.room
  end

  private

  def member_params = params.require(:member).permit(:name, :room_id)
end
