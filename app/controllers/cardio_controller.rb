class CardioController < ApplicationController

  def new
    @cardio = Cardio.new
  end
  
  def create
	@id = params[:id]
    @form = params[:cardio]
    @cardio = Cardio.new
    @cardio.date = DateTime.new( @form["date(1i)"].to_i , @form["date(2i)"].to_i , @form["date(3i)"].to_i )
	@cardio.time = DateTime.new( @form["time(4i)"].to_i , @form["time(5i)"].to_i)
    @cardio.exercise_id = @id
    if @cardio.save
      flash[:notice] = "Your time has been successfully created!"
      redirect_to show_exercise_path(@id)
    else
      flash[:warning] = "Invalid time, please try again"
      redirect_to new_exercise_path(@id)
    end
  end
  
end
