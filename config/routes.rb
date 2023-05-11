# frozen_string_literal: true
Rails.application.routes.draw do
  # resources :courses, only: [:index]
  # resources :chapters, only: [:show]
  # resources :ratings, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  resources :courses, only: %i[index show] do
    member do
      get 'chapter/:chapter_id', action: :chapter, as: :chapter
      post 'chapter/:chapter_id/rate', action: :rate_chapter, as: :rate_chapter
    end
  end
end
