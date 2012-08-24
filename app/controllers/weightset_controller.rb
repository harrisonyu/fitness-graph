class WeightsetController < ApplicationController

  def new
    @weightset = Weightset.new
  end
  
  def create
	  @id = params[:id]
    @form = params[:weightset]
    @weightset = Weightset.new
    @weightset.reps = @form[:reps]
    @weightset.weight = @form[:weight]
	  @weightset.sets = @form[:sets]
    @weightset.date = DateTime.new( @form["date(1i)"].to_i , @form["date(2i)"].to_i , @form["date(3i)"].to_i )
    @weightset.exercise_id = @id
    if @weightset.save
      flash[:notice] = "Your weightset has been successfully created!"
      redirect_to show_exercise_path(@id) and return
    else
      flash[:warning] = "Invalid weightset, please try again"
      redirect_to new_exercise_path(@id) and return
    end
  end
  
  def delete
    @id = params[:id]
    @weightset = Weightset.find_by_id(@id)
    @exercise_id = @weightset.exercise_id
    if !@weightset
      flash[:warning] = "That weightset does not exist!"
    else
      @weightset.destroy
      flash[:notice] = "The weightset has been deleted and no longer exists!"
    end
    redirect_to show_exercise_path(@exercise_id) and return
  end
  
end
