# frozen_string_literal: true
class CoursesController < ApplicationController
  # GET /courses
  def index
    @courses = Course.all
    @courses = @courses.order_by(name: :asc) if params[:sort] == 'title'
    @courses = @courses.order_by(date: :desc) if params[:sort] == 'date'
    @courses = @courses.order_by(aggregate_rating: :desc) if params[:sort] == 'rating'

    # Apply domain filtering
    @courses = @courses.where(:domain.in => params[:domain]) if params[:domain]

    render json: ::CourseSerializer.new(@courses).serialized_json
  end

  # GET /courses/1
  def show
    @course = Course.find(params[:id])
    render json: ::CourseSerializer.new(@course).serialized_json.to_s
  rescue Mongoid::Errors::DocumentNotFound
    render json: { error: 'Course not found' }, status: :not_found
  end

  def chapter
    course = Course.find(params[:id])
    chapter = course.chapters.find(params[:chapter_id])
    render json: { error: 'Chapter not found' }, status: :not_found unless chapter.present?

    render json: ::ChapterSerializer.new(chapter).serialized_json.to_s
  rescue Mongoid::Errors::DocumentNotFound
    render json: { error: 'Chapter not found' }, status: :not_found
  end

  def rate_chapter
    course = Course.find(params[:id])
    chapter = course.chapters.find(params[:chapter_id])

    rating = params[:rating].to_i

    if rating > 10 || rating < -10
      return render json: { success: false, message: 'Rating not recorded. Rating should be between 1 and 10', rating: rating },
                    status: :bad_request
      return
    end

    chapter.ratings << rating
    chapter.save

    all_ratings = course.chapters.map(&:ratings).flatten
    aggregated_rating = all_ratings.sum / all_ratings.size
    course.update(aggregated_rating: aggregated_rating)

    render json: { success: true, message: 'Chapter rated successfully', rating: rating }
  rescue Mongoid::Errors::DocumentNotFound
    render json: { error: 'Course or chapter not found' }, status: :not_found
  end
end
