class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.all.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        top_score = grades.first
        render json: top_score
    end

end
