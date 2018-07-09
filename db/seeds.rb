# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Regular Joe', last_name: 'Orange', email: 'orange@gmail.com', birthday: '1990-04-21', industry:
	'agriculture', avatar:'hungrycaterpillar.jpeg', role:'user', password:'password')

User.create(first_name: 'Superadmin', last_name: 'Is Hungry', email: 'hungry@gmail.com', birthday: '1990-04-21', industry:
	'administration', avatar:'hungrycaterpillar.jpeg', role:'superadmin', password:'password')

User.create(first_name: 'Lawyerly', last_name: 'Green', email: 'green@gmail.com', birthday: '1980-04-21', industry:
	'legal', avatar:'hungrycaterpillar.jpeg', role:'lawyer', password:'password', type_of_lawyer:'general employment', description:'I have been working in the employment industry for 20 over years now. I specialise primarily in appeals.', education:'Universiti Malaya', verified: true)

User.create(first_name: 'Seriously', last_name: 'Pink', email: 'pink@gmail.com', birthday: '1980-04-21', industry:
	'legal', avatar:'hungrycaterpillar.jpeg', role:'lawyer', password:'password', type_of_lawyer:'I specialise in women\'s rights within the employment sector', description:'Most of my legal matters relate to maternity leave and sexual harassment claims.', education:'National University of Singapore', verified: true)

User.create(first_name: 'The Mayor', last_name: 'Of Your Town', email: 'mayo@gmail.com', birthday: '1980-04-21', industry:
	'legal', avatar:'hungrycaterpillar.jpeg', role:'lawyer', password:'password', type_of_lawyer:'General Employment', description:'I work full time as the Mayor but law, specifically general employment is a passion of mine. Let me help you.', education:'Passed the CLP', verified: true)



Article.create(title: 'Is it legal for my boss to make me work on a Malaysian public holiday?', tag: 'Time Off', user_id: 5)

Article.create(title: 'If your boss refuses to pay you in Malaysia, what can you do?', tag: 'Wages', user_id: 4)

Article.create(title: 'When Employees Leave: Non-compete and non-solicitation clauses in employment contracts', tag: 'Contracts', user_id: 3)


Comment.create(content: 'I hate it when my boss makes me work on Merdeka Day. I really don\'t think that is allowed.', user_id: 1, article_id: 1)

Comment.create(content: 'I want to be paid on time, and I also want a raise for all those times I wasn\'t.', user_id: 2, article_id: 2)

Comment.create(content: 'Yay! I\'m free to leave and start my own cotton plant farm somewhere far away! It\'s going to be great :)', user_id: 1, article_id: 3)


Query.create(topic:'Payment of Wages', question: 'Legal Rep', description: 'Where can I get legal representation? I think my boss is in violation of some of the laws stated above.', user_id: 1)
Answer.create(query_id: 1, user_id: 2, content: 'Click on this lawyer\'s name. It will lead to her profile. She\'s pretty good.', upvotes: 3)



Query.create(topic:'Payment of Wages', question: 'Paid Leave', description: 'Can I not get legal representation but confront my boss solo? And throw the book at him?', user_id: 2)
Answer.create(query_id: 2, user_id: 4, content: 'Yes, you should do that. Mediation is always preferable to bringing a claim against the party in question of violation.', upvotes: 10)
Answer.create(query_id: 2, user_id: 3, content: 'If you are up for the legal battle, contact me.', upvotes: 3)
Answer.create(query_id: 2, user_id: 5, content: 'Peace, not war.', upvotes: 4)


Query.create(topic:'Time Off', question: 'Can I negotiate a specific day I want off?', description: 'The reason isn\'t that great I have to admit. I would just like to do some gardening every first Monday of the month.', user_id: 2)
Answer.create(query_id: 3, user_id: 5, content: 'Absolutely. Talk to your boss, days off are legally customisable. Also, gardening is a joy.', upvotes: 16)



