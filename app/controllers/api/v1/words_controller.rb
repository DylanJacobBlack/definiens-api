class Api::V1::WordsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def index
    @words = Word.all
  end

  def show
    @words = Word.find(params[:id])
  end

  def create
    @word = Word.create(translation: params[:word][:translation], name: params[:word][:name], language_id: params[:word][:language_id], user_id: params[:word][:user_id], home_language: "en" )
    @word.nil? ? :not_found : :created
  end
end
