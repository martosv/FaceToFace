# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


for i in 1..50
	User.create(name: "User #{i}", email: "user#{i}@gmail.com")
end


for i in 1..20
	rand_user = rand(19)+1
	rand_days = rand(20)
	rand_price = rand(10)
	Auction.create(user_id: rand_user, item: "Item #{i}", description: "Description item #{i}", end_date: (Date.today + rand_days.days), price: rand_price)
end

for i in 1..100
	rand_bid = rand(100)
	rand_user = rand(49)+1
	rand_auction = rand(19)+1
    Bid.create(user_id: rand_user, auction_id: rand_auction, bidding: rand_bid)
end