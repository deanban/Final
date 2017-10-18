# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
d = User.create(email:"d@d.com", password:"123456", first_name: "dean", last_name:"banik")
l = User.create(email:"l@l.com", password:"123456", first_name:"luke", last_name:"glayat")
h = User.create(email:"h@h.com", password:"123456", first_name:"hui", last_name:"wang")
n = User.create(email:"n@n.com", password:"123456", first_name:"neil", last_name:"steiner")

cat1 = Category.create(name:"Science, Technology, Engineering, and Mathematics")
cat2 = Category.create(name:"Politics, Law, Government, and Judiciary")
cat3 = Category.create(name:"Food, Cuisines, and Cooking")
cat4 = Category.create(name:"Education, Schools, and Learning")
cat5 = Category.create(name:"Art, Design, and Style")
cat6 = Category.create(name:"News, Entertainment, and Pop Culture")
cat7 = Category.create(name:"Business, Work, and Careers")
cat8 = Category.create(name:"History, Philosophy, Religion, and Humanities")


roses = Question.create(title:"why are roses red?", user_id:1, category_id:1)
trump = Question.create(title:"Will Trump quit before his term ends?", user_id:2, category_id:2)
sun = Question.create(title:"How far are we from the sun?", user_id:3, category_id:1)
sun_big = Question.create(title:"How big is the sun?", user_id:4, category_id:1)

red = Answer.create(title:"It only looks red because the light emited from roses due to its celular structure is towards the red spectrum.", user_id:1, question_id:1)
Answer.create(title:"To attract bees", user_id:2, question_id:1)
Answer.create(title:"Most likely", user_id:4, question_id:2)
Answer.create(title:"He's a lazy piece of shit! Ofc he will!", user_id:3, question_id:2)
Answer.create(title:"92.96 million miles", user_id:1, question_id:3)
Answer.create(title:"149.6 million km", user_id:4, question_id:3)
Answer.create(title:"1.3914 million km", user_id:3, question_id:4)


Vote.create(user_id:1, vote_count:1, answer_id:1)
Vote.create(user_id:2, vote_count:1, answer_id:1)
Vote.create(user_id:2, vote_count:1, answer_id:2)
Vote.create(user_id:3, vote_count:1, answer_id:3)


sc = Tag.create(name:"science")
ph = Tag.create(name:"Philosophy")
pol = Tag.create(name:"Politics")
ent = Tag.create(name:"Entertainment")
art = Tag.create(name:"Art")
des = Tag.create(name:"Design")
news = Tag.create(name:"News")
his = Tag.create(name:"History")
gov = Tag.create(name:"Government")
food = Tag.create(name:"Food")
# fl = Tag.create(name:"Flatiron")


roses.tags << sc
roses.tags << ph
trump.tags << pol
sun.tags << sc
sun_big.tags << sc