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

API Response Screenshots:

<img width="1197" alt="Screenshot 2023-05-11 at 6 29 56 PM" src="https://github.com/anantdimri96/kimo-assignment/assets/27183971/9b4c3fa7-1cfa-4b8a-a8fd-514e506910db">

<img width="1197" alt="Screenshot 2023-05-11 at 6 30 06 PM" src="https://github.com/anantdimri96/kimo-assignment/assets/27183971/6d5c3fea-0a18-4c55-9204-40b1ece0b914">

<img width="1197" alt="Screenshot 2023-05-11 at 6 30 14 PM" src="https://github.com/anantdimri96/kimo-assignment/assets/27183971/10772467-3d29-4ccc-9602-acc2504ae843">

<img width="1197" alt="Screenshot 2023-05-11 at 6 30 22 PM" src="https://github.com/anantdimri96/kimo-assignment/assets/27183971/08497ec7-91ce-4fb3-811d-af869afcc693">

<img width="1197" alt="Screenshot 2023-05-11 at 6 30 35 PM" src="https://github.com/anantdimri96/kimo-assignment/assets/27183971/119e286d-66cc-498a-8c6a-e351d6481f84">



