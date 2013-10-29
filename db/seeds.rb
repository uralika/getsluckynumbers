# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.destroy_all

games = Game.create([{ title: "POWERBALL"} ])

Question.destroy_all

#game.questions.create
	Question.create([
	{number: 1, text: "What is your favorite number?"},
	{number: 2, text: "When is your birthday?"},
	{number: 3, text: "Life on Mars?"},
	{number: 4, text: "Who let the dogs out?"},
	{number: 5, text: "What's in store?"},
	{number: 6, text: "Mothership, mothership, do you read me?"},
	{number: 7, text: "Where's the boat?"},
	{number: 8, text: "Are you a hypnotist?"},
	{number: 9, text: "Hast thou considered the tetrapod?"},
	{number: 10, text: "What is your secret?"},
	{number: 11, text: "What is your favorite color?"},
	{number: 12, text: "Where is everybody?"},
	{number: 13, text: "What's it feel like to be a ghost?"},
	{number: 14, text: "Why bother?"},
	{number: 15, text: "What's up?"},
	{number: 16, text: "Should I stay or should I go now?"},
	{number: 17, text: "Are we human or are we dancer?"},
	{number: 18, text: "How many times must the cannonballs fly before they're forever banned?"},
	{number: 19, text: "How many years can a mountain exist before it is washed to the sea?"},
	{number: 20, text: "How many times must a man look up before he can see the sky?"},
	{number: 21, text: "Why can't we be ourselves like we were yesterday?"},
	{number: 22, text: "What is love?"},
	{number: 23, text: "All the lonely people, where do they all come from?"},
	{number: 24, text: "All the lonely people, where do they all belong?"},
	{number: 25, text: "Will it come through in translation?"},
	{number: 26, text: "Rock'n'roll sure came through for you. Why would anybody want it to?"},
	{number: 27, text: "Would you choose water over wine and hold my own and drive?"},
	{number: 28, text: "Who wants to sleep in the city that never wakes up?"},
	{number: 29, text: "Who put the bop in the bop shoo bop shoo bop?"},
	{number: 30, text: "Why, Oh Why?"},
	{number: 31, text: "Now what's cooler than bein' cool?"},
	{number: 32, text: "Who are you?"},
	{number: 33, text: "How long is too long?"}
	])
