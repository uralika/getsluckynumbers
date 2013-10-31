# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.destroy_all

games = Game.create(title: "POWERBALL", questions: [


	Question.new(text: "What is your favorite number?"),
	Question.new(text: "When is your Birthday?"),
	Question.new(text: "Life on Mars?"),
	Question.new(text: "Who let the dogs out?"),
	Question.new(text: "What's in store?"),
	Question.new(text: "Mothership, mothership, do you read me?"),
	Question.new(text: "Where's the boat?"),
	Question.new(text: "Are you a hypnotist?"),
	Question.new(text: "Hast thou considered the tetrapod?"),
	Question.new(text: "What is your secret?"),
	Question.new(text: "What is your favorite color?"),
	Question.new(text: "Where is everybody?"),
	Question.new(text: "What's it feel like to be a ghost?"),
	Question.new(text: "Why bother?"),
	Question.new(text: "What's up?"),
	Question.new(text: "Should I stay or should I go now?"),
	Question.new(text: "Are we human or are we dancer?"),
	Question.new(text: "How many times must the cannonballs fly before they're forever banned?"),
	Question.new(text: "How many years can a mountain exist before it is washed to the sea?"),
	Question.new(text: "How many times must a man look up before he can see the sky?"),
	Question.new(text: "Why can't we be ourselves like we were yesterday?"),
	Question.new(text: "What is love?"),
	Question.new(text: "All the lonely people, where do they all come from?"),
	Question.new(text: "All the lonely people, where do they all belong?"),
	Question.new(text: "Will it come through in translation?"),
	Question.new(text: "Rock'n'roll sure came through for you. Why would anybody want it to?"),
	Question.new(text: "Would you choose water over wine and hold my own and drive?"),
	Question.new(text: "Who wants to sleep in the city that never wakes up?"),
	Question.new(text: "Who put the bop in the bop shoo bop shoo bop?"),
	Question.new(text: "Why, Oh Why?"),
	Question.new(text: "Now what's cooler than bein' cool?"),
	Question.new(text: "Who are you?"),
	Question.new(text: "How long is too long?"),
	])

# Seed some scores for our users
u = User.all[0]
u.scores.create(test_name:"SAT", test_score:1208)
u.scores.create(test_name:"ACT", test_score:29)
u.scores.create(test_name:"AFQT", test_score:76)
u = User.all[1]
u.scores.create(test_name:"SAT", test_score:932)
u.scores.create(test_name:"ACT", test_score:24)
u.scores.create(test_name:"AFQT", test_score:58)
u = User.all[2]
u.scores.create(test_name:"SAT", test_score:1121)
u.scores.create(test_name:"ACT", test_score:30)
u.scores.create(test_name:"AFQT", test_score:63)
u = User.all[3]
u.scores.create(test_name:"SAT", test_score:1360)
u.scores.create(test_name:"ACT", test_score:33)
u.scores.create(test_name:"AFQT", test_score:87)
