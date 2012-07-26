class CardioController < ApplicationController

  def new
    @cardio = Cardio.new
  end
  
  def create
	@id = params[:id]
	@form = params["dates"]
	@dateobj = DateTime.new( @form["date(1i)"].to_i, @form["date(2i)"].to_i, @form["date(3i)"].to_i)
	@cardio = Cardio.new
    @cardio.date = @dateobj
	@timer = Timer.new
	@timer.hour = @form["Hours"].to_i
	@timer.minute = @form["Minutes"].to_i
	@timer.second = @form["Seconds"].to_i
    @cardio.exercise_id = @id
	if @timer.valid? and @cardio.valid?
	  @cardio.save
      flash[:notice] = "Your time has been successfully created!"
	  @timer.cardio_id = @cardio.id
	  @timer.save
      redirect_to show_exercise_path(@id) and return
	else
	  flash[:warning] = "Invalid time, please try again"
	  redirect_to new_cardio_path(@id) and return
	end
    
  end
  
end
