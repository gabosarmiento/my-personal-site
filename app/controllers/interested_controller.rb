class InterestedController < ApplicationController

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Mensaje enviado exitosamente.")
    else
      redirect_to(root_path, :alert => "Lo siento revisa el mensaje pues no pudo ser enviado.")
    end
  end

end