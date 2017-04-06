class Api::V1::StudentsController < ApiController
  def show
    @student = Student.find(params[:id])
    render :json => {
      :id => @student.id,
      :name => @student.name,
      :course => @student.courses,
      :teacher => @student.teachers
    }
  end
end
