

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{email: "dclorena11@gmail.com" , first_name: "Lorena" , last_name:"Dela Cruz" , password: "secret", phone:"8479150897", lat: 41.88500, lng:-87.6378},
            {email: "dbccrew1@dbc.com", first_name: "Matt" , last_name:"Beal" , password:"secret", phone:"8080202999", lat: 41.88300, lng:-87.6378},
            {email: "dbccrew2@dbc.com", first_name: "Eileen", last_name: "McFarland", password:"secret", phone:"8080202999", lat: 41.88400, lng:-87.6378},
            {email: "dbccrew3@dbc.com", first_name: "Nicole", last_name: "Tolch", password:"secret", phone:"8080202992", lat: 41.88600, lng:-87.6378},
            {email: "dude@yahoo.com", first_name: "Dude", last_name: "Dudefam", password:"secret", phone:"7738129908", lat: 41.88600, lng:-89.6378}])

Group.create(name: "WYA", admin_id: 1, event: "Cool People Party")
Grouping.create([{user_id: 1, group_id: 1},
                {user_id: 2, group_id: 1},
                {user_id: 3, group_id: 1},
                {user_id: 4, group_id: 1}])

