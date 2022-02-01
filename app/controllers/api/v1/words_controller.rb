class WordsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @words = Word.all
  end

  def show
    @words = Word.find(params[:id])
  end

  def create
    @word = Word.create(definitio: params[:lesson][:title], text: params[:lesson][:text], language_id: params[:lesson][:language_id], user_id: params[:lesson][:user_id], url: picture['url'])
    @lesson.nil? ? :not_found : :created
  end

  def lesson_params
    params.require(:lesson).permit(:title, :text, :language_id, :user_id, :url, :diff_lev)
  end
end