# app/views/api/v1/lessons/show.json.jbuilder
json.extract! @lesson, :id, :title, :text
