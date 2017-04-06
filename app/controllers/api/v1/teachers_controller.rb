class Api::V1::TeachersController < ApiController
  def index
    @teachers = Teacher.all
    render :json => {
      :data => @teachers.map{ |teacher|
        { :name => teacher.name,
          :teacher => teacher.id,
          :course  => teacher.courses
        }
      }
    }
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    render :json => { :message => "You've deleted teacher and courses" }
  end
end
