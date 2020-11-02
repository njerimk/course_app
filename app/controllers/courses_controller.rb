class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new 
    #just shows the form
    @course = Course.new
  end

  def create
    # new_name = params[:course][:name]
    # new_room = params[:course][:room]
    # new_day = params[:course][:day]
    # new_time = params[:course][:time]
  
    # new_room =
    @course = Course.create(params.require(:course).permit(:name, :room, :day, :time, :student_ids => []))
    redirect_to course_path(@course)
  end
  
  def show
    @course = Course.find(params[:id])
  end


  def edit
    @course = Course.find(params[:id])

    render 'new'
  end

  def update
    @course = Course.find(params[:id])
    new_name = params[:name]
    new_room = params[:room]
    new_day = params[:day]
    new_time =params[:time]

    @course.update(name: new_name, room: new_room, day: new_day, time: new_time)
    
    redirect_to course_path(@course)
  end

end
