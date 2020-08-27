# README - PayLav Challenge
![GitHub top language](https://img.shields.io/github/languages/top/diegoshakan/paylav)
![GitHub language count](https://img.shields.io/github/languages/count/diegoshakan/paylav?style=plastic)
![GitHub repo size](https://img.shields.io/github/repo-size/diegoshakan/paylav)

This Web App receive a file text (type .tab) and parse data to save in one relational database.

## Pre-requisites

* Ruby '2.7.1'
* Rails 6.0.3
* Bundler 2.1.4
* Docker and Docker-Compose
* Postgresql 10.10

## Setup Project

* $ git clone https://github.com/diegoshakan/paylav.git
* $ cd paylav
* $ sudo docker-compose build --no-cache
* $ sudo docker-compose up -d
* $ sudo docker-compose exec app bash
* $ rails db:create db:migrate
* $ bundle install
* if your sistem ask for Yarn, please type $ yarn install or just $ yarn

## Web App
* You can register one user or you can sign in with you Facebook Account;
* In this app you will find a input to you make a upload of your text file (type .tab);
* after that you're receive the informations in your display;
* with total purchase, which is automatically calculated;
* and all this information was saved in your database.
* You can see your saved datas in rails console, for example. Just start the console with $ rails c and type $ PurchaseInformation.all

## Tests
GEMS
* Rspec-rails
* Factory_bot_rails
* FFaker

