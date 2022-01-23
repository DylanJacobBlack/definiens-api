# app/controllers/api/v1/lessons_controller.rb
class Api::V1::LessonsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def create
    puts params
    @lesson = Lesson.create(lesson_params)
    @lesson.url = @lesson.get_url
    @lesson.nil? ? :not_found : :created
  end

  def lesson_params
    # puts lesson_params
    params.require(:lesson).permit(:title, :text, :picture, :language_id, :user_id)
  end
end
