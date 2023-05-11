# frozen_string_literal: true
class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :date, :domain, :description, :chapters, :created_at, :aggregated_rating
end
