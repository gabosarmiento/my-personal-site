class InterestedController < ApplicationController

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message sent succesfully.")
    else
      redirect_to(root_path, :alert => "I'm sorry try again and please check the application form.")
    end
  end

end