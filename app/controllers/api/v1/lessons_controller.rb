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
    picture = Cloudinary::Uploader.upload(params[:lesson][:picture])
    @lessson = Lesson.create(title: params[:lesson][:title], text: params[:lesson][:text], language_id: params[:lesson][:language_id], user_id: params[:lesson][:user_id], url: picture['url'])
    @lesson.nil? ? :not_found : :created
  end

  def lesson_params
    params.require(:lesson).permit(:title, :text, :language_id, :user_id, :url, :diff_lev)
  end
end
