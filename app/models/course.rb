# frozen_string_literal: true
class Course
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :date, type: DateTime
  field :description, type: String
  field :domain, type: Array
  field :aggregated_rating, type: Float, default: 0

  embeds_many :chapters

  scope :alphabetical, -> { order_by(name: :asc) }
  scope :by_date, -> { order_by(date: :desc) }
  scope :by_rating, -> { order_by(rating_average: :desc) }
  scope :by_domain, ->(domain_id) { where(domain: domain_id) }
end
