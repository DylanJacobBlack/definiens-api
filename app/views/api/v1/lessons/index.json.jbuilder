# app/views/api/v1/lessons/index.json.jbuilder
json.lessons do
  json.array! @lessons do |lesson|
    json.extract! lesson, :id, :language, :title, :text
  end
end
