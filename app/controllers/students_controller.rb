class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create
    @student = Student.new(params[:student])
    
    redirect_to student_path(@student)
  end

end
