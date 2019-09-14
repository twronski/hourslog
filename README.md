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

* HoursRecord.where(profile_id: 6, day: (Time.now.midnight - 6.day)..Time.now.midnight).sum("man_hour") -> Ultima semana

### Query given day working hours

* HoursRecord.where(profile_id: 6, day: "2019-08-07").sum("man_hour")
* HoursRecord.where(status: ["rep_approved","rep_under_analysis"]).count

### Yarn commands

`yarn init`
`yarn add @fortawesome/fontawesome-free@5.9.0`

### Atuaizar / Fazer rodar a aplicacao em outro PC

1 - `docker-compose run --rm bundle install`
2 - `docker-compose run --rm bundle exec reails db:drop db:create db:migrate db:seed`
3 - `npm install` or `yarn install`

`yarn add @fortawesome/fontawesome-free@5.9.0`

### Some Migrations
* `docker-rails generate migration AddMainSkillProfile  main_skill:references`

### Devise Invitable
* [Devise invitable](https://github.com/scambra/devise_invitable)
* 

* [Rails on Docker: Using Rails Encrypted Credentials with Docker](https://www.evernote.com/l/AOJ2WQUjnJJEf7Jfs62otkPP5nSf1yHH_Wo/)

### Assets precompile
 `docker-compose run --rm app bundle exec rake assets:precompile`

### Credentials
`docker-compose run --rm -e EDITOR=nano app bundle exec rails credentials:edit`

### Emet on Rails Visual Code
[link](https://stackoverflow.com/questions/41051423/how-do-i-auto-format-ruby-or-erb-files-in-vs-code)

### Create evaluations
`u2.hours_records.select(:id, :project_id, :activity_id).distinct`

### Example of join table creation
`rails g migration CreateJoinTableAuthorsBooks authors books`

### Some Models Generation
* `docker-rails generate scaffold Company name:string address:string profile:references`
* `docker-rails generate scaffold ImprovementAction title:string description:text status:integer`
* `docker-rails generate scaffold MainEquipment name:string`
* `docker-rails generate migration addMainEquipmentToHoursRecord main_equipment:references`
* `docker-rails generate scaffold DocTemplate title:string description:text`
* `docker-rails generate scaffold AccessTemplate name:string description:text mandatory:boolean`
* `docker-rails generate scaffold SuggestionBox name:string description:text status:integer`
* `docker-rails generate scaffold Vote choice:integer votable:references{polymorphic}`
* `docker-rails generate scaffold ProfileSubSkill profile:references sub_skill:references level:integer status:integer expiration_date:date`
* ``
* ``
* ``
* ``
* ``

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
  * [x] invitable devise
  * [x] Complement Hour Log Model
  * [x] Create approval view based on show (partial)
  * [x] Test some validations
  * [x] Growl Notifications
  * [] Implement Extra Hours Creation
    * [] Models
    * [] Views
    * [] Link with record creation
  * [x] Add some models [Evernote](https://www.evernote.com/l/AOIUL_QUFaBCaqE8BwTr28rZncwIMwygGls/)
    * [x] Companies
    * [x] Improvement Action
    * [x] Evaluation
    * [x] Documents
    * [x] AccessTemplate
  * [] [Enum otimizations](https://www.evernote.com/l/AOJAnkuY5LRL_ayRjIaFfRSQkN2FCs3116Q/)
  * [] [Eager load otimizations](https://www.evernote.com/l/AOKNvMDa-QpMHbEWl5oPMuOA1sEB4u62zhE/)
  * [] [Eager load](https://www.evernote.com/l/AOLjdGIaZ05JBahCWtaxitFDOaMqIqBwhWI/)
  * [] Seed with more real data
  * [] [Implement roles access using pundit](https://www.evernote.com/shard/s226/sh/2bd25d93-4933-4f87-b0c5-ec1498592f19/c3b0ba53e74c721675888bf4c3d4c5cf)
  * [] Create Navigation
  * [] Will paginate
  * [] friendly_id
  * [] background_jobs
  * [] mailer
  * [] Helpers in html
  * [x] Bootsrap styling *   Buy Theme
  * [] Trabalhar mensagens de erros as notificações
  * [] Deployment
