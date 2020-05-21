# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

  # User.create(
  # email: "user@ex.ub",
  # password: "password",
  # password_confirmation: "password",
  # lastname: Faker::Name.first_name,
  # firstname: Faker::Name.last_name,
  # phonenumber:"0497000001"
  # )

  # User.create(
  # email: "user@ex.ub",
  # password: "password",
  # password_confirmation: "password",
  # lastname: Faker::Name.first_name,
  # firstname: Faker::Name.last_name,
  # phonenumber:"0497000001"
  # )
  #   User.create(
  # email: "user@ex.uc",
  # password: "password",
  # password_confirmation: "password",
  # lastname: Faker::Name.first_name,
  # firstname: Faker::Name.last_name,
  # phonenumber:"0497000002"
  # )

  #     User.create(
  # email: "user@ex.uc",
  # password: "password",
  # password_confirmation: "password",
  # lastname: Faker::Name.first_name,
  # firstname: Faker::Name.last_name,
  # phonenumber:"0497000003"
  # )


  Appointment.create(
    user_id: 5,
    date: DateTime.new(2020,5,13,14,0,2))



  Appointment.create(
    user_id: 6,
    date: DateTime.new(2020,5,13,16,0,2))


  Appointment.create(
    user_id: 7,
    date: DateTime.new(2020,5,20,14,0,2))

  Appointment.create(
    user_id: 5,
    date: DateTime.new(2020,5,27,14,0,2))
