puts "🌱 Seeding data..."

g1 = Game.create(title: "title1", genre: "genre1", platform: "plat1", image_url: "img1", price: 10)
g2 = Game.create(title: "title2", genre: "genre2", platform: "plat2", image_url: "img2", price: 10)
g3 = Game.create(title: "title3", genre: "genre3", platform: "plat3", image_url: "img3", price: 10)

u1 = User.create(name: "name1", profile_url: "prof1")
u2 = User.create(name: "name2", profile_url: "prof2")

r1 = Review.create(score: 43, content: "If at first you don't succeed Die, Die Again.", time: 1.day.ago, user_id: u1.id, game_id: g1.id)
r2 = Review.create(score: 91, content: "If at first you don't succeed Die, Die Again.", time: 3.day.ago, user_id: u1.id, game_id: g2.id)
r3 = Review.create(score: 70, content: "If at first you don't succeed Die, Die Again.", time: 5.day.ago, user_id: u2.id, game_id: g2.id)
r4 = Review.create(score: 75, content: "If at first you don't succeed Die, Die Again.", time: 5.day.ago, user_id: u2.id, game_id: g3.id)


c1 = Comment.create(content: "If at first you don't succeed Die, Die Again.", user_id: u1.id, review_id: r1.id)
c2 = Comment.create(content: "If at first you don't succeed Die, Die Again.", user_id: u1.id, review_id: r2.id)
c3 = Comment.create(content: "If at first you don't succeed Die, Die Again.", user_id: u2.id, review_id: r3.id)
c4 = Comment.create(content: "If at first you don't succeed Die, Die Again.", user_id: u2.id, review_id: r4.id)
puts "🌱 Done seeding!"