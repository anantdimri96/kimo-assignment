# frozen_string_literal: true
class Chapter
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :text, type: String
  field :ratings, type: Array, default: []

  embedded_in :course
end
