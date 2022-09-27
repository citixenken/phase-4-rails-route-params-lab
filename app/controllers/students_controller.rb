class StudentsController < ApplicationController

  def index
    # query params
    #=============
    if params[:name]
      students = Student.search_by_name(params[:name])
    else
      students = Student.all
    end
    render json: students
  end

  def grades
    student = Student.order(grade: :desc)
    render json: student
  end

  def highest_grade
    student = Student.order(grade: :desc).first
    render json: student
  end

  # dynamic routing
  def student 
    student = Student.find_by(id: params[:id])
    render json: student
  end
end
