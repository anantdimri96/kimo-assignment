# frozen_string_literal: true
class ChapterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :text, :id
end
