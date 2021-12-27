# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing db..."
Lesson.destroy_all
User.destroy_all
Language.destroy_all

puts "Creating users..."
admin = User.create(
  email: "system@admin.com",
  password: "something"
)

puts "Creating languages..."
english = Language.create(
  name: "English"
)

puts "Creating lessons..."

Lesson.create(
  user_id: admin.id,
  language_id: english.id,
  title: "Story One: Mike is a Cook",
  diff_lev: 1,
  text:
  "Story One: Mike is a Cook

Hi there.

These are stories that I want you to listen to.

They use the most common verbs in the language.

It's a place to practice basic structures in the language.

The story is told twice, and then there are questions.

And you can choose to answer the questions, or just listen to the answers that I provide.

So, story number one about Mike who works in a restaurant.

A) Mike gets up at six am every morning.

He makes breakfast and drinks a coffee.

He drives to work in his car.

His work starts at seven thirty am.

Mike is a cook at a restaurant.

He makes food for hungry customers.

The customers are from many countries.

They speak many different languages.

Mike can meet many friendly people.

Mike is happy when he talks to the customers.

Now I want you to listen to the same story, but this time told by Mike.

You'll notice it's a little different.

Here's Mike.

B) I get up at six am every morning.

I make breakfast and drink a coffee.

I drive to work in my car.

My work starts at seven thirty am.

I am a cook at a restaurant.

I make food for hungry customers.

The customers are from many different countries.

They speak many different languages.

I can meet many friendly people.

I am happy when I talk to the customers.

Now I want you to listen to the questions and if you think you can answer, please do so.

Out loud or not out loud, or just listen to the answers – it's up to you.

Questions:

One: Mike wakes up at six am every morning.

Does Mike wake up early?

Yes, Mike wakes up at six am every morning.

Two: Mike drinks a coffee.

Does Mike drink a tea?

No, Mike does not drink a tea, he drinks a coffee.

Three: Mike drives his car to work.

Does Mike drive his car to work?

Yes, Mike drives his car to work.

Four: Mike's work starts at seven thirty am.

Does Mike's work start at seven am?

No, Mike's work does not start at seven am.

It starts at seven thirty am.

Five: Mike is a cook at a restaurant.

Is Mike a cook?

Yes, Mike is a cook at a restaurant.

Six: The customers are from many different countries.

Are the customers from one country?

No, the customers are not from one country.

They are from many different countries.

Seven: The customers are friendly.

Are the customers friendly?

Yes, the customers are friendly.

Eight: Mike feels happy when he talks to the customers.

Does Mike feel happy when he talks to the customers?

Yes, Mike feels happy when he talks to the customers.

Alright, and that completes your first lesson in this series of mini stories that are going to help you understand and be able to use the English language.

I invite you to listen to the next story.

Bye for now."
)

Lesson.create(
  user_id: admin.id,
  language_id: english.id,
  title: "Story Two: Dustin Wants to Take a Vacation",
  diff_lev: 1,
  text: "
Now let's listen to the story of Dustin, who is excited about his winter holiday.

A) Dustin is excited for the winter holiday.

He has some time off in the winter.

He doesn't have to work for two weeks.

He wants to go on vacation.

But, he doesn't know where to go.

He wants to go to France.

But France is expensive.

The airplane tickets cost a lot.

And Dustin doesn't speak French.

He decides to study, save money, or stay home.

Now let's listen to the same story told by Dustin.

B) I am excited for the winter holiday.

I have some time off in the winter.

I don't have to work for two weeks.

I want to go on vacation.

But, I don't know where to go.

I want to go to France.

But France is expensive.

The airplane tickets cost a lot.

And I don't speak French.

I decide to study, save money, or stay home.

Now let's look at some questions. You can just listen if you want, or if you want to try to answer the questions, please do so, either silently or out loud.

Questions:

One: Dustin is excited for the winter holidays. Is Dustin excited? Yes, Dustin is excited for the winter holidays.

Two: Dustin has time off in the winter. Does Dustin have free time in the winter? Yes, Dustin has time off in the winter.

Three: Dustin wants to go on vacation. Does Dustin want to stay home? No, Dustin does not want to stay home. He wants to go on vacation.

Four: Dustin doesn't know where to go. Does Dustin know where to go? No, Dustin doesn't know where to go.

Five: Dustin wants to go to France for his vacation. Does Dustin want to go to France? Yes, Dustin wants to go to France for his vacation.

Six: France is expensive. Is France cheap?

No, France is not cheap. France is expensive.

Seven: Dustin does not speak French. Does Dustin speak French? No, Dustin does not speak French.

Eight: Dustin decides to study French, save money, or stay home for the vacation. Does Dustin decide to study French? Yes, he decides to study French, save money, or stay home for the vacation.

And there you have it, the story of Dustin who wanted to go on vacation. Thank you for listening, and we'll look forward to the next story."
)

Lesson.create(
  user_id: admin.id,
  language_id: english.id,
  title: "Story Three: Karen Gets a Cat",
  diff_lev: 1,
  text:"
Story number three.

A) Karen is bored at work and at home.

She does the same thing every day.

She wants a new hobby.

First, she tries to cook.

But her food does not taste good.

Then, she tries to swim.

But she is afraid of water.

Karen walks home and sees a pet store.

In the pet store, she sees a cat!

Karen buys the cat, and is now very happy.

Now the same story told by Karen.

B) I am bored at work and at home.

I do the same thing every day.

I want a new hobby.

First, I try to cook.

But my food does not taste good.

Then, I try to swim.

But I am afraid of water.

I walk home and see a pet store.

In the pet store, I see a cat!

I buy the cat, and am now very happy.

Now some questions about the story. I will say the answer after the question.

Questions:

One: Karen is bored at work, and at home. Is Karen happy at work? No, Karen is not happy at work. She is bored at work, and at home.

Two: Karen does the same thing every day. Does Karen do many new things?

No, Karen does the same thing every day.

Three: Karen wants a new hobby. Does Karen want a new hobby? Yes, Karen wants a new hobby.

Four: Karen's food does not taste good. Is Karen a good cook? No, Karen is not a good cook. Her food does not taste good.

Five: Karen is afraid of water. Does Karen like swimming? No, Karen does not like swimming. She is afraid of water.

Six: Karen sees a cat in a pet store. Does Karen see a cat in a store? Yes Karen sees a cat in a pet store.

Seven: Karen buys the cat from the pet store. Does Karen buy the cat? Yes, Karen buys the cat from the pet store.

Eight: Karen is now very happy because she has a cat. Is Karen bored now? No, Karen is not bored. She is now very happy because she has a cat."
)

Lesson.create(
  user_id: admin.id,
  language_id: english.id,
  title: "Story Four: My Daughter is a Good Student",
  diff_lev: 1,
  text:"
  Story number four.

A) My daughter goes to school every day.

She likes school very much.

She is a good student at school.

The teachers like my daughter a lot.

My daughter also has many friends.

Her best friend is Amy.

Amy likes math and science.

My daughter likes English and history.

They help each other with homework.

They study hard and do well in school.

Now the same story told by the daughter.

B) I go to school every day.

I like school very much.

I am a good student at school.

My teachers like me a lot.

I also have many friends.

My best friend is Amy.

She likes math and science.

I like English and history.

We help each other with homework.

We study hard and do well in school.

Now some questions about the story. I will say the answer after the question.

Questions:

One: The daughter goes to school every day. Does the daughter go to school every day? Yes, she goes to school every day.

Two: The daughter likes school. Does the daughter like school? Yes, she likes school.

Three: The daughter is a good student. Is the daughter a bad student? No, the daughter is not a bad student. She is a good student.

Four: The teachers like the daughter. Do the teachers like the daughter? Yes, the teachers like her.

Five: Her best friend is named Amy. Is her best friend named Julie? No, her best friend is named Amy.

Six: Amy likes math and science. Does Amy like English and history?

No, she likes math and science.

Seven: The daughter and Amy do well in school. Does the daughter do well in school? Yes, the daughter and Amy do well in school."
)
