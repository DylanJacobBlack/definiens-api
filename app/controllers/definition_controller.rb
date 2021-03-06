class DefinitionController < ApplicationController
  require "google/cloud/translate/v2"

  def lookup
    translate = Google::Cloud::Translate::V2.new(
    project_id: "glossy-motif-334504",
    credentials: "google-credentials.json")

    translation = translate.translate params[:text], to: "en"

    render json:  {translation: translation.text} #=> "Salve mundi!"
  end
end
