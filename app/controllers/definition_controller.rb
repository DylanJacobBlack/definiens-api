class DefinitionController < ApplicationController
  require "google/cloud/translate/v2"

  def lookup
    translate = Google::Cloud::Translate::V2.new version: :v2

    translation = translate.translate params[:text], to: "la"

    render json:  { translation: translation.text } #=> "Salve mundi!"
  end
end
