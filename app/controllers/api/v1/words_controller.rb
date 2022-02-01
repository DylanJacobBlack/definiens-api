class Api::V1::WordsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def index
    @words = Word.all
  end

  def show
    @words = Word.find(params[:id])
  end

  def create
    @word = Word.create(definitio: params[:word][:name], text: params[:word][:definition], language_id: params[:word][:language_id], user_id: params[:word][:user_id], lesson_id: params[:word][:lesson_id] )
    @lesson.nil? ? :not_found : :created
  end
end