# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

file_path = Rails.root.join('public/courses.json')

course_objects = JSON.parse(File.read(file_path))

course_objects.each do |course|
  c = Course.create!(name: course['name'],
                     date: course['date'],
                     description: course['description'],
                     domain: course['domain'])
  c.chapters.create!(course['chapters'])
end
