# Destiny 2 Raid-A-Long

## by Nate Cottle

## Description

A web app that players can use to form a group to take on Destiny 2 Raids. The goal is for raiders to be able to easily communicate information to each other without the use of microphone.

## Setup Requirements

1. Clone the repo
1. Delete Gemfile.lock
1. Run '$bundle install' to bundle Gemfile dependencies
1. Create the database environments using '$rails:db setup'
1. Install filler to the database by running '$rails db:seed'
1. Deploy app locally by running '$rails s'
1. Go to localhost:3000

## MVP Goals

1. Communication system - currently live chat system
1. Ability to create, join, and leave groups
1. A dashboard with relevant infromation
1. Database structure is finished
1. Presentable


## Stretch Goals

1. Allow users to share raid_symbols in realtime and other information (location of things on map?)
1. Fully fleshed out design
1. Database is populated with correct information.
1. Password authentication for groups
1. Permissions for Group Creator

## Technologies Used

* Ruby 2.4.1
* Rails 5.2
* Postgresql
* ActiveRecord

## License

This software is licensed under the MIT license.

Copyright (c)2018 **  Nate Cottle **