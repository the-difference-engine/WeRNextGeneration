# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Camp.create!([
              {title: "Intro to Ruby",
              description: "Ruby is a dynamic, reflective, object-oriented, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro 'Matz' Matsumoto in Japan.",
              max_students: 12,
              min_students: 4,
              address: "100 W Ohio Street",
              city: "Chicago",
              state: "IL",
              zip: 60654,
              phone: "(312) 555-7980",
              instructor_id: 1,
              start_time: "2:00 pm",
              end_time: "4:00 pm",
              start_date: "August 15, 2018",
              end_date: "November 15, 2018",
              price: 1000.00},

              {title: "Intro to JavaScript",
              description: "JavaScript, often abbreviated as JS, is a high-level, dynamic, weakly typed, object-based, multi-paradigm, and interpreted programming language. Alongside HTML and CSS, JavaScript is one of the three core technologies of World Wide Web content production. It is used to make webpages interactive and provide online programs, including video games.",
              max_students: 12,
              min_students: 4,
              address: "400 9th Avenue",
              city: "Seattle",
              state: "WA",
              zip: 98109,
              phone: "(206) 462-6411",
              instructor_id: 2,
              start_time: "4:00 pm",
              end_time: "6:00 pm",
              start_date: "August 15, 2018",
              end_date: "November 15, 2018",
              price: 1000.00}              
              ])