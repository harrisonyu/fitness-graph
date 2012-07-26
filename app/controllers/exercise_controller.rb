class ExerciseController < ApplicationController

  def show
    @id = params[:id]
    @exercise = Exercise.find_by_id(@id)
    if !@exercise
      flash[:warning] = "That exercise does not exist!"
      redirect_to home_path
    end
  end

  def new
    @exercise = Exercise.new
  end
  
  def create
    @form = params[:exercise]
    @exercise = Exercise.new
    @exercise.name = @form[:name]
    @exercise.exercise_type = @form[:exercise_type]
    @exercise.user_id = current_user.id
    if @exercise.save
      flash[:notice] = "#{@exercise.name} has been successfully created!"
      redirect_to home_path and return
    else
      flash[:warning] = "Invalid name, please try again"
      redirect_to new_exercise_path and return
    end
  end
  
  def delete
    @id = params[:id]
    @exercise = Exercise.find_by_id(@id)
    if !@exercise
      flash[:warning] = "That exercise does not exist!"
    else
      @exercise.destroy
      flash[:notice] = "#{@exercise.name} no longer exists!"
    end
    redirect_to home_path and return
  end
  
end
