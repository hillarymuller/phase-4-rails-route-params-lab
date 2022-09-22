class StudentsController < ApplicationController

  def index
    students = Student.all
    matches = students.filter(params[:name] == student.first_name || student.last_name)
    render json: students
    render json: matches
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
