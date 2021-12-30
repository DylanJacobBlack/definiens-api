# app/controllers/api/v1/lessons_controller.rb
class Api::V1::LessonsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def index
    @lessons = Lesson.all
    render json: @lessons #Just for testing
  end

  def create
    @lesson = Lesson.create(lesson_params)
    @lesson.nil? ? :not_found : :created
  end

  def lesson_params
    params.require(:lesson).permit(:title, :text, :language_id, :user_id)
  end
end
