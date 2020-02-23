class WelcomeController < ApplicationController
  def index
    @message = Message.new
  end
  def why
  end
end
