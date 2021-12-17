# app/controllers/api/v1/lessons_controller.rb
class Api::V1::LessonsController < Api::V1::BaseController
  def index
    @lessons = Lesson.all
    render json: @lessons #Just for testing
  end
end
