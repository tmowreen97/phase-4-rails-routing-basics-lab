class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students, status: :ok
  end

  def grades
    students = Student.all.sort_by{|student| student[:grade]}.reverse!
    render json: students, status: :ok
  end

  def highest_grade
    students = Student.all.sort_by{|student| student[:grade]}.reverse!
    render json: students.first, status: :ok
  end


end
