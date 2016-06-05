class StudentsController < ApplicationController
    #get /students/index
    #get /students
    def index
        @students = Student.all
    end
    
    #get /students/show/:id
    def show
        @student=Student.find(params[:id])
    end
    
    #get /students/edit/:id
    def edit
        @student = Student.find(params[:id])
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
    
    #post students/update/:id
    def update
        @student = Student.find(params[:id])
        
        @student.update(student.params)
        
        redirect_to :action => 'show', :id => @student
    end
    
    private
    def student_params
        params.require(:student).permit(:name, :weight, :height, :color, :gpa, :description, :sex)
    end
end
