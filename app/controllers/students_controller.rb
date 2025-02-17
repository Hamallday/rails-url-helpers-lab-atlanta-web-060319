class StudentsController < ApplicationController
  
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    render :show 
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active 
    @student.save
    redirect_to student_path(@student)
  end

end