class Api::V1::StudentsController < ApiController
  def show
    @student = Student.find(params[:id])
    render :json => {
      :course => @student.courses,
      :teacher => @student.teachers
    }
  end
end
