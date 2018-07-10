# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: 'Regular Joe', last_name: 'Orange', email: 'orange@gmail.com', birthday: '1990-04-21', industry:
	'agriculture', role:'user', password:'password')

User.create(first_name: 'Superadmin', last_name: 'Is Hungry', email: 'hungry@gmail.com', birthday: '1990-04-21', industry:
	'administration', role:'superadmin', password:'password')

User.create(first_name: 'Lawyerly', last_name: 'Green', email: 'green@gmail.com', birthday: '1980-04-21', industry:
	'legal', role:'lawyer', password:'password', type_of_lawyer:'general employment', description:'I have been working in the employment industry for 20 over years now. I specialise primarily in appeals.', education:'Universiti Malaya', verified: true)

User.create(first_name: 'Seriously', last_name: 'Pink', email: 'pink@gmail.com', birthday: '1980-04-21', industry:
	'legal', role:'lawyer', password:'password', type_of_lawyer:'I specialise in women\'s rights within the employment sector', description:'Most of my legal matters relate to maternity leave and sexual harassment claims.', education:'National University of Singapore', verified: true)

User.create(first_name: 'The Mayor', last_name: 'Of Your Town', email: 'mayo@gmail.com', birthday: '1980-04-21', industry:
	'legal', role:'lawyer', password:'password', type_of_lawyer:'General Employment', description:'I work full time as the Mayor but law, specifically general employment is a passion of mine. Let me help you.', education:'Passed the CLP', verified: true)


Message.create(sender_id: 1, recipient_id: 5, content: 'Hi Mr Mayor. I\'m having some trouble with my employer. She refuses to pay for plumbing and now the office toilets are all clogged up.')
Message.create(sender_id: 5, recipient_id: 1, content: 'Hi Joe, shall we move this conversation over to a skype session? I\'m free this Saturday at 2pm for a call.')
Message.create(sender_id: 1, recipient_id: 5, content: 'Thanks for taking the time to respond, but I actually don\'t have a Skype account. Is it possible for us to meet instead? It may be more efficient. This Saturday at 2pm sounds fine.')
Message.create(sender_id: 1, recipient_id: 5, content: 'We could meet for coffee. KL or PJ is convenient for me.')
Message.create(sender_id: 5, recipient_id: 1, content: 'I would actually love to go for some dimsum earlier in the morning instead. Shall we meet at CarrotCakeDimSum Shop at say, 9am this Sat?')
Message.create(sender_id: 1, recipient_id: 5, content: 'Sure, that would be fine. I will be wearing a white shirt with a red poppy printed on its back.')
Message.create(sender_id: 5, recipient_id: 1, content: 'I on the other hand, will be wearing bright green shoes that look a little nylon-like. See you soon.')
Message.create(sender_id: 1, recipient_id: 5, content: 'See you, thanks.')


Message.create(sender_id: 3, recipient_id: 1, content: 'Hi, would you need some legal advice?')
Message.create(sender_id: 1, recipient_id: 3, content: 'Sure, is it free?')
Message.create(sender_id: 3, recipient_id: 1, content: 'Not really. It would cost you some but no legal advice is free these days.')
Message.create(sender_id: 1, recipient_id: 3, content: 'How am I supposed to pay you? There\'s no Braintree set up. Or is there?')
Message.create(sender_id: 3, recipient_id: 1, content: 'It\'s an up and coming feature on the site.')
Message.create(sender_id: 1, recipient_id: 3, content: 'Ah, I see.')



Message.create(sender_id: 4, recipient_id: 5, content: 'Just so you know, I\'ve sort of met someone now..')
Message.create(sender_id: 4, recipient_id: 5, content: 'On this site in fact.')
Message.create(sender_id: 4, recipient_id: 5, content: 'Just thought I should let you know..')
Message.create(sender_id: 5, recipient_id: 4, content: 'Oh..')
Message.create(sender_id: 5, recipient_id: 4, content: 'I guess that\'s great. You know I want you to be happy.')
Message.create(sender_id: 5, recipient_id: 4, content: 'Are you happy?')
Message.create(sender_id: 4, recipient_id: 5, content: 'I\'ve always been happy, Mr Mayor. You could\'ve made me even more so. But then, politics is your first love.')
Message.create(sender_id: 5, recipient_id: 4, content: 'Actually, it\'s employment law.')
Message.create(sender_id: 4, recipient_id: 5, content: 'Sorry?')
Message.create(sender_id: 5, recipient_id: 4, content: 'Employment law has become a great love of mine.')
Message.create(sender_id: 4, recipient_id: 5, content: 'That is..good :) I hope you\'re happy too.')
Message.create(sender_id: 5, recipient_id: 4, content: 'Thanks. Pink, goodnight.')
Message.create(sender_id: 4, recipient_id: 5, content: 'Why do you always have to leave?')
Message.create(sender_id: 4, recipient_id: 5, content: 'Fine, goodnight.')
Message.create(sender_id: 5, recipient_id: 4, content: 'I don\'t want to leave. But you\'re always pushing me away.')
Message.create(sender_id: 4, recipient_id: 5, content: 'Because you don\'t show me you want me enough! The truth is, you\'ll never want me enough, and you certainly would never need me.')
Message.create(sender_id: 4, recipient_id: 5, content: 'The only question is whether you\'d have a use for me. And I don\'t merely want to be of use to someone or even useful to someone I share intimacy with. ')
Message.create(sender_id: 5, recipient_id: 4, content: 'Who is this guy anyway? What\'s his name..')
Message.create(sender_id: 4, recipient_id: 5, content: 'He\'s a regular Joe.')
Message.create(sender_id: 5, recipient_id: 4, content: 'I see.')
Message.create(sender_id: 4, recipient_id: 5, content: 'What are you gonna do? Be all "heroic"? ')
Message.create(sender_id: 5, recipient_id: 4, content: 'Nah..')



Message.create(sender_id: 5, recipient_id: 1, content: 'By the way, do you know someone going by the name "Seriously Pink"? She\'s a lawyer on this site and all.')
Message.create(sender_id: 1, recipient_id: 5, content: 'Not that I recall.')
Message.create(sender_id: 5, recipient_id: 1, content: 'Really? Try again.')
Message.create(sender_id: 1, recipient_id: 5, content: 'Oh! Yes, she messaged me, struck up a conversation about potential legal advice.')
Message.create(sender_id: 5, recipient_id: 1, content: 'I don\'t know how to be subtle about this so I\'m just gonna go ahead and say this: do you really want just legal advice or are you just trying to hit it off with my girl?')
Message.create(sender_id: 1, recipient_id: 5, content: 'Your girl? She\'s an independent autonomous human you know that right..')
Message.create(sender_id: 5, recipient_id: 1, content: 'Oh don\'t give me all that sanctimonious sentiment. She\'s mine as I am hers.')
Message.create(sender_id: 5, recipient_id: 1, content: 'Hi, I\'m her man.')
Message.create(sender_id: 1, recipient_id: 5, content: 'This is insane.')
Message.create(sender_id: 5, recipient_id: 1, content: 'Yes, it is. So stop contacting her.')
Message.create(sender_id: 1, recipient_id: 5, content: 'Okay..')
Message.create(sender_id: 1, recipient_id: 5, content: 'Are we still meeting for dimsum this weekend')




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



