# app/controllers/api/v1/lessons_controller.rb
class Api::V1::LessonsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def index
    @lessons = Lesson.all
    render json: @lessons #Just for testing
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      flash[:success] = "Lesson successfully created"
    else
      flash[:error] = "Something went wrong"
    end
  end

  def lesson_params
    params.require(:lesson).permit(:title, :text, :language_id, :user_id)
  end
end
