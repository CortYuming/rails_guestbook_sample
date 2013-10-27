class GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all.order("created_at DESC")
  end

  private
  def greeting_params
    params.require(:greeting).permit(:name, :comment)
  end
end
