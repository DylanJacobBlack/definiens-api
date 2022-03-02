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
    language = Language.where(name: params[:word][:language]).first
    @word = Word.create(translation: params[:word][:translation], name: params[:word][:name], language: language, home_language: "en", user: @current_user, known: 0)
    @word.nil? ? :not_found : :created
  end

  def words_params
    params.require(:word).permit(:translation, :name, :language)
  end
end
