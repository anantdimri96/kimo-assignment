# frozen_string_literal: true
require 'spec_helper'
require 'rails_helper'


RSpec.describe CoursesController, type: :controller do
describe 'GET #index' do
  course1 = Course.create(name: 'Course A', date: Time.now - 1.day, description: "description1", domain: ['domain1'], aggregated_rating: 1)
  course2 = Course.create( name: 'Course B', date: Time.now - 2.days, description: "description2", domain: ['domain2'],aggregated_rating:1)

  it 'returns a list of all available courses sorted alphabetically' do
    get :index, params: { sort: 'title' }
    expect(response).to have_http_status(:ok)
    response_body = JSON.parse(response.body)

  end

  it 'returns a list of all available courses sorted by date descending' do
    get :index, params: { sort: 'date' }
    expect(response).to have_http_status(:ok)
    # expect(JSON.parse(response.body)['courses'].pluck('name')).to eq(['Course C', 'Course A', 'Course B'])
  end

  it 'returns a list of all available courses sorted by total course rating descending' do

    course1 = Course.create(name: 'Course A', date: Time.now - 1.day, description: "description1", domain: ['domain1'], aggregated_rating: 1)
    course2 = Course.create( name: 'Course B', date: Time.now - 2.days, description: "description2", domain: ['domain2'],aggregated_rating:1)
    get :index, params: { sort: 'rating' }
    expect(response).to have_http_status(:ok)

  end
end

end