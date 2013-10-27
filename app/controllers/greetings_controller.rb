class GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all.order("created_at DESC").page(params[:page]).per(5)
    @greeting = Greeting.new
  end

  def create
    @greeting = Greeting.new(greeting_params)

    respond_to do |format|
      if @greeting.save
        format.html { redirect_to greetings_path }
      else
        format.html { render action: 'index' }
      end
    end
  end

  private
  def greeting_params
    params.require(:greeting).permit(:name, :comment)
  end
end
