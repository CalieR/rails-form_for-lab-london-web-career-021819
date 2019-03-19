class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all 
    end

     # use strong params here:
    def create
        @school_class = SchoolClass.new(school_class_params)
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def new
        @school_class = SchoolClass.new 
    end 

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

     # use strong params here:
    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    private
 
    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

end