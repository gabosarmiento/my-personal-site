class InterestedController < ApplicationController

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Mensaje enviado.")
    else
      redirect_to(root_path, :alert => "Mensaje no enviado.")
    end
  end

end