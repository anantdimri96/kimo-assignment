# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - ruby '2.7.3'

* System dependencies added in gemfile

* Database creation - mongo db

* How to run the test suite
`bundle exex rspec .`

Containerization: added docker and docker-compose
This project used FastApi and serializers are in place.

Endpoints:

Chapter info -> `/courses/:id/chapter/:chapter_title`                                                    
Rate chapter -> `/courses/:id/chapter/:chapter_title/rate`                                                
Courses overview(with sorting options) -> `/courses`                                                                               
Course overview -> `/courses/:id`

All the working endpoints collections are added in the repo itself with working samples with the name kimo.postman_collection.json
