class StudentsController < ApplicationController

    def index 
        @students = Student.all
    end

        # use strong params here:
    def create 
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def new 
        @student = Student.new
    end 

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

         # use strong params here:
    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private
 
    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end