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

### Generate Project with Docker - Linux

`sudo docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app ruby /bin/bash -c "gem install rails ; rails new testWindows --skip-bundle --database=postgresql"`

### Setup Database

* Setup database.yml (user: postgres and host: postgres)
* create and migrate postgres database:
  * `docker-compose run --rm app bundle exec rails db:create db:migrate`

### Setup Devise and Mailcatcher

### Generate Devise User model

### Generate Application Models

Reminder:

* Use @xxx.destroy to delete all the dependent: destroy associamtions.

### Roles

* engineer
* ct
* pm
* team_leader
* ge_team_leader
* admin
* pmo

### Visualize git topology in the terminal

 `git log --graph --decorate --oneline`

### Update remote branchs in local list

 `git fetch`

### Clone a remote branch and switch to it

 `git checkout -b [branch name] origin/[branch name]

### Alias zsh

 `alias docker-rails="docker-compose run --rm app bundle exec rails"`
`alias docker-db-reset="docker-compose run --rm app bundle exec rails db:drop db:create db:migrate db:seed"`
 `alias docker-bundle="docker-compose run --rm app bundle install"`

## Useful Tips (new learning)

### Date Time in Ruby

[Date Time](https://www.tutorialspoint.com/ruby/ruby_date_time)

### Visual Studio Debug Rails

[onebitcode - vs code](https://onebitcode.com/vs-code-rails/)
[degug rails - vs code oficial microsoft](https://github.com/microsoft/vscode-recipes/tree/master/debugging-Ruby-on-Rails)

### Summary of git commands

[Git Commands](https://github.com/joshnh/Git-Commands)

### Query last week working hours

* HoursRecord.where(user_id: 6, day: (Time.now.midnight - 6.day)..Time.now.midnight).sum("man_hour") -> Ultima semana

### Query given day working hours

* HoursRecord.where(user_id: 6, day: "2019-08-07").sum("man_hour")
* HoursRecord.where(status: ["rep_approved","rep_under_analysis"]).count

### Yarn commands

`yarn init`
`yarn add @fortawesome/fontawesome-free@5.9.0`

* **Todo**
  * [x] Add next_action_deadline and review_count fields on hours_record model \
  * [x] implement creation and update hooks for hours_record model \
  * [x] Create application config itens \
    * [x] Time_for CT review \
    * [x] Time for 2nd review on \
    * [x] Max_number_of_reviews
    * [x] Max Days for providing report
    * [x] Max weekly working hours
    * [x] Max daily working hours
    * [x] Max daily working extra hours
  * [] Create Validators
    * [x] Date Validator
    * [x] Hours Validator
    * [x] Work Week Validator (need fix +- 6 days)
  * [x] Download theme
  * [x] Install theme (Udemy Jackson Pires)
  * [x] Test HTML helpers
  * [] Seed with more real data
  * [x] Test some validations
  * [] Implement Extra Hours Creation
    * [] Models
    * [] Views
    * [] Link with record creation
  * [] Implement roles access using can can
  * [] Create Navigation
  * [] Will paginate
  * [] friendly_id
  * [] background_jobs
  * [] mailer
  * [] invitable devise
  * [] Helpers in html
  * [] Bootsrap styling *   Buy Theme
  * [] Deployment
