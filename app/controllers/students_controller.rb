class StudentsController < ApplicationController
    #get /students/index
    #get /students
    def index
        @students = Student.all
    end
    
    #get /students/new
    def new
        @student = Student.new
    end
    
    #post /students/create
    def create
        @student = Student.new( student_params)
        
        @student.save
        
        redirect_to :action => :index  #tell browser http code: 3003
    end
    
    private
    def event_params
        params.require(:event).permit(:name, :weight, :height, :color, :gpa, :description, :sex)
    end
end
