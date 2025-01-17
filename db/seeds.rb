# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 1 - Create Users / Profiles
require 'ffaker'

puts "Create Main Skills..."

@main_skills= ['Protection','Control','Eletrician','RDP Specialist']
@main_skills.each do |main_skill|
  MainSkill.find_or_create_by!(
  name: main_skill
  )
end

puts "Main Skills created succesfully..."

puts "Create Sub Skills..."

@sub_skills= ['English','UR','650','S2020', 'SAGE', 'AGILE']
@sub_skills.each do |sub_skills|
  SubSkill.find_or_create_by!(
  name: sub_skills
  )
end

puts "Sub Skills created succesfully..."

puts "Create Main Equipment..."

@main_equipments= ['C60','T60','C650','RDP', 'C264', 'Painel', 'IHM']
@main_equipments.each do |main_equipment|
  MainEquipment.find_or_create_by!(
  name: main_equipment
  )
end

puts "Main Equipment created succesfully..."

puts "Create Company.."

@companies = ['GE','Saved','Eltman','Projexa', 'Smart', 'Tremac', 'PSI']
@companies.each do |company|
  Company.find_or_create_by!(
  name: company
  )
end

puts "Company created succesfully..."

puts "Create Fake Users..."

  25.times do
    @user = User.create!(
      email: FFaker::Internet.email,
      password: "123456",
      password_confirmation: "123456"
    )
    @main_skill = MainSkill.all.sample
    @company = Company.all.sample
    @user.create_profile!(
        
        full_name: "#{FFaker::Name.first_name} #{FFaker::Name.last_name}",
        main_skill_id: @main_skill.id,
        company_id: @company.id
    )
  end
p User.all.sample
puts "Fake users created succesfully..."

# 2 - Create Activities

puts "Create Fake Activities..."

  5.times do
    Activity.find_or_create_by!(
      name: FFaker::SportUS.name
    )
  end

puts "Fake Activities created succesfully..."

# 3 - Create Bays (food)

puts "Create Fake Bays..."

  7.times do
    Bay.find_or_create_by!(
      name: FFaker::Product.product_name
    )
  end
  
puts "Fake Bays created succesfully..."

# 4 - Create Inmroductive reason

puts "Create Fake Improductive Reason..."

  4.times do
    ImproductiveReason.find_or_create_by!(
      name: FFaker::Vehicle.model
    )
  end
  
puts "Fake Improductive Reason created succesfully..."

# 5 - Cretae Voltage Level

puts "Create Fake Voltage Levels..."

  4.times do
    VoltageLevel.find_or_create_by!(
      name: FFaker::Food.fruit
    )
  end
  
puts "Fake Voltage Levels created succesfully..."

# 6 - Create Project

puts "Create Projects..."

  20.times do
    @ct = Profile.all.sample
    @pm = Profile.all.sample

    Project.create!(
      wbs: [*('a'..'z'),*('0'..'9')].shuffle[0,8].join,
      name: [*('a'..'z'),*('0'..'9')].shuffle[0,10].join,
      description: FFaker::Lorem.paragraph,
      ct_id: @ct.id,
      pm_id: @pm.id
    )
  end
  
puts "Projects created succesfully..."

# 7 - Hours Records

puts "Create Hour Records"

  50.times do
    @activity = Activity.all.sample
    @project = Project.all.sample
    @profile = Profile.all.sample
    @bay = Bay.all.sample
    @voltage_level = VoltageLevel.all.sample
    @improductive_reason = ImproductiveReason.all.sample
    @main_skill = MainSkill.all.sample
    @main_equipment = MainEquipment.all.sample

    HoursRecord.create!(
      day: Date.today - rand(12),
      man_hour: rand * 3,
      activity_id: @activity.id,
      project_id: @project.id,
      profile_id: @profile.id,
      bay_id: @bay.id,
      voltage_level_id: @voltage_level.id,
      status: 0,
      description: FFaker::HipsterIpsum.paragraph,
      improductive: 1,
      improductive_reason_id: @improductive_reason.id,
      main_skill_id: @main_skill.id,
      main_equipment_id: @main_equipment.id
    )
    puts "hour record created"
  end
  
puts "Hour Records created succesfully..."




