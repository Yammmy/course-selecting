class Api::V1::TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    render :json => {
      :data => @teachers.map{ |teacher|
        { :teacher => teacher.id,
          :course  => teacher.courses
        }
      }
    }
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
  end
end
