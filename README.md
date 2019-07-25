# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Description
Simple application to log work hours related to a project and type of activity  
May be improved with validation process  
May also include reports and statustics related to these logged hours

### Setup Database
* Setup database.yml (user: postgres and host: postgres)
* create and migrate postgres database:
  + `docker-compose run --rm app bundle exec rails db:create db:migrate`

### Setup Devise and Mailcatcher

### Generate Devise User model

### Generate Application Models

Reminder:

* Use @xxx.destroy to delete all the dependent: destroy associamtions.

### Roles:
 - engineer
 - ct
 - pm
 - team_leader
 - ge_team_leader
 - admin

 ### Visualize git topology in the terminal
 `git log --graph --decorate --oneline`