class Api::V1::WordsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
  before_action :authorize_request

  def index
    @words = Word.all
  end

  def show
    @words = Word.find(params[:id])
  end

  def create
    puts params[:word][:translation]
    @word = Word.create(translation: params[:word][:translation], name: params[:word][:name], language_id: params[:word][:language_id], home_language: "en", user: @current_user, known: 0)
    @word.nil? ? :not_found : :created
  end
end
