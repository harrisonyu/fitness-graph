class CardioController < ApplicationController

  def new
    @cardio = Cardio.new
  end
  
  def create
    @id = params[:id]
    @form = params["dates"]
    @hour = params["Hours"]
    @minute = params["Minutes"]
    @second = params["Seconds"]
    @dateobj = DateTime.new( @form["date(1i)"].to_i, @form["date(2i)"].to_i, @form["date(3i)"].to_i)
    @cardio = Cardio.new
    @cardio.date = @dateobj
    @timer = Timer.new
    @timer.hour = @hour.to_i
    @timer.minute = @minute.to_i
    @timer.second = @second.to_i
    @cardio.exercise_id = @id
    if @timer.valid? and @cardio.valid?
      @cardio.save
	    @timer.cardio_id = @cardio.id
	    @timer.save
      flash[:notice] = "Your time has been successfully created!"
      redirect_to show_exercise_path(@id) and return
	  else
	    flash[:warning] = "Invalid time, please try again"
	    redirect_to new_cardio_path(@id) and return
	  end 
  end
  
  def delete
    @id = params[:id]
    @cardio = Cardio.find_by_id(@id)
    @exercise_id = @cardio.exercise_id
    if !@cardio
      flash[:warning] = "That time does not exist!"
    else
      @cardio.destroy
      flash[:notice] = "The time has been deleted and no longer exists!"
    end
    redirect_to show_exercise_path(@exercise_id) and return
  end
end
