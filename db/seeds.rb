# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing db..."
Word.destroy_all
Lesson.destroy_all
User.destroy_all
Language.destroy_all

puts "Creating admin..."
admin = User.create(
  username: "admin",
  email: "system@admin.com",
  password: "something"
)

puts "Creating languages..."
english = Language.create(
  name: "en"
)
spanish = Language.create(
  name: "es"
)

chinese = Language.create(
  name: "zh"
)

french = Language.create(
  name: "fr"
)

german = Language.create(
  name: "de"
)

# puts "Creating test words..."

# Word.create(name: "test", translation: "cat", language: chinese, user: admin, home_language: "en", known: 1)

puts "Creating lessons..."

Lesson.create(
  user: admin,
  language: english,
  title: "Twenty Thousand Leagues Under the Sea, Chapter One",
  diff_lev: 5,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643062313/wiuymbx6zmwe3daelhqh.jpg",
  text: "THE YEAR 1866 was marked by a bizarre development, an unexplained and downright inexplicable phenomenon that surely no one has forgotten.

Without getting into those rumors that upset civilians in the seaports and deranged the public mind even far inland, it must be said that professional seamen were especially alarmed. Traders, shipowners, captains of vessels, skippers, and master mariners from Europe and America, naval officers from every country, and at their heels the various national governments on these two continents, were all extremely disturbed by the business.

In essence, over a period of time several ships had encountered \"an enormous thing\" at sea, a long spindle–shaped object, sometimes giving off a phosphorescent glow, infinitely bigger and faster than any whale.

The relevant data on this apparition, as recorded in various logbooks, agreed pretty closely as to the structure of the object or creature in question, its unprecedented speed of movement, its startling locomotive power, and the unique vitality with which it seemed to be gifted.

If it was a cetacean , it exceeded in bulk any whale previously classified by science. No naturalist, neither Cuvier nor Lacépède, neither Professor Dumeril nor Professor de Quatrefages, would have accepted the existence of such a monster sight unseen—specifically, unseen by their own scientific eyes.

Striking an average of observations taken at different times—rejecting those timid estimates that gave the object a length of 200 feet, and ignoring those exaggerated views that saw it as a mile wide and three long—you could still assert that this phenomenal creature greatly exceeded the dimensions of anything then known to ichthyologists, if it existed at all.

Now then, it did exist, this was an undeniable fact; and since the human mind dotes on objects of wonder, you can understand the worldwide excitement caused by this unearthly apparition.

As for relegating it to the realm of fiction, that charge had to be dropped. In essence, on July 20, 1866, the steamer Governor Higginson , from the Calcutta & Burnach Steam Navigation Co., encountered this moving mass five miles off the eastern shores of Australia.

Captain Baker at first thought he was in the presence of an unknown reef; he was even about to fix its exact position when two waterspouts shot out of this inexplicable object and sprang hissing into the air some 150 feet.

So, unless this reef was subject to the intermittent eruptions of a geyser, the Governor Higginson had fair and honest dealings with some aquatic mammal, until then unknown, that could spurt from its blowholes waterspouts mixed with air and steam. Similar events were likewise observed in Pacific seas, on July 23 of the same year, by the Christopher Columbus from the West India & Pacific Steam Navigation Co.

Consequently, this extraordinary cetacean could transfer itself from one locality to another with startling swiftness, since within an interval of just three days, the Governor Higginson and the Christopher Columbus had observed it at two positions on the charts separated by a distance of more than 700 nautical leagues. Fifteen days later and 2,000 leagues farther, the Helvetia from the Compagnie Nationale and the Shannon from the Royal Mail line, running on opposite tacks in that part of the Atlantic lying between the United States and Europe, respectively signaled each other that the monster had been sighted in latitude 42° 15' north and longitude 60° 35' west of the meridian of Greenwich.

From their simultaneous observations, they were able to estimate the mammal's minimum length at more than 350 English feet;* this was because both the Shannon and the Helvetia were of smaller dimensions, although each measured 100 meters stem to stern. Now then, the biggest whales, those rorqual whales that frequent the waterways of the Aleutian Islands, have never exceeded a length of 56 meters—if they reach even that. *Author's Note: About 106 meters. An English foot is only 30.4 centimeters. One after another, reports arrived that would profoundly affect public opinion: new observations taken by the transatlantic liner Pereire , the Inman line's Etna running afoul of the monster, an official report drawn up by officers on the French frigate Normandy , dead–earnest reckonings obtained by the general staff of Commodore Fitz–James aboard the Lord Clyde .

In lighthearted countries, people joked about this phenomenon, but such serious, practical countries as England, America, and Germany were deeply concerned. In every big city the monster was the latest rage; they sang about it in the coffee houses, they ridiculed it in the newspapers, they dramatized it in the theaters.

The tabloids found it a fine opportunity for hatching all sorts of hoaxes. In those newspapers short of copy, you saw the reappearance of every gigantic imaginary creature, from \"Moby Dick,\" that dreadful white whale from the High Arctic regions, to the stupendous kraken whose tentacles could entwine a 500–ton craft and drag it into the ocean depths.

They even reprinted reports from ancient times: the views of Aristotle and Pliny accepting the existence of such monsters, then the Norwegian stories of Bishop Pontoppidan, the narratives of Paul Egede, and finally the reports of Captain Harrington—whose good faith is above suspicion—in which he claims he saw, while aboard the Castilian in 1857, one of those enormous serpents that, until then, had frequented only the seas of France's old extremist newspaper, The Constitutionalist . An interminable debate then broke out between believers and skeptics in the scholarly societies and scientific journals.

The \"monster question\" inflamed all minds.

During this memorable campaign, journalists making a profession of science battled with those making a profession of wit, spilling waves of ink and some of them even two or three drops of blood, since they went from sea serpents to the most offensive personal remarks. For six months the war seesawed.

With inexhaustible zest, the popular press took potshots at feature articles from the Geographic Institute of Brazil, the Royal Academy of Science in Berlin, the British Association, the Smithsonian Institution in Washington, D.C., at discussions in The Indian Archipelago, in Cosmos published by Father Moigno, in Petermann's Mittheilungen ,* and at scientific chronicles in the great French and foreign newspapers.

When the monster's detractors cited a saying by the botanist Linnaeus that \"nature doesn't make leaps,\" witty writers in the popular periodicals parodied it, maintaining in essence that \"nature doesn't make lunatics,\" and ordering their contemporaries never to give the lie to nature by believing in krakens, sea serpents, \"Moby Dicks,\" and other all–out efforts from drunken seamen. Finally, in a much–feared satirical journal, an article by its most popular columnist finished off the monster for good, spurning it in the style of Hippolytus repulsing the amorous advances of his stepmother Phædra, and giving the creature its quietus amid a universal burst of laughter. Wit had defeated science. *German: \"Bulletin. Ed.

During the first months of the year 1867, the question seemed to be buried, and it didn't seem due for resurrection, when new facts were brought to the public's attention.

But now it was no longer an issue of a scientific problem to be solved, but a quite real and serious danger to be avoided. The question took an entirely new turn. The monster again became an islet, rock, or reef, but a runaway reef, unfixed and elusive. On March 5, 1867, the Moravian from the Montreal Ocean Co., lying during the night in latitude 27° 30' and longitude 72° 15', ran its starboard quarter afoul of a rock marked on no charts of these waterways. Under the combined efforts of wind and 400–horsepower steam, it was traveling at a speed of thirteen knots.

Without the high quality of its hull, the Moravian would surely have split open from this collision and gone down together with those 237 passengers it was bringing back from Canada. This accident happened around five o'clock in the morning, just as day was beginning to break.

The officers on watch rushed to the craft's stern. They examined the ocean with the most scrupulous care. They saw nothing except a strong eddy breaking three cable lengths out, as if those sheets of water had been violently churned. The site's exact bearings were taken, and the Moravian continued on course apparently undamaged. Had it run afoul of an underwater rock or the wreckage of some enormous derelict ship? They were unable to say. But when they examined its undersides in the service yard, they discovered that part of its keel had been smashed.

This occurrence, extremely serious in itself, might perhaps have been forgotten like so many others, if three weeks later it hadn't been reenacted under identical conditions.

Only, thanks to the nationality of the ship victimized by this new ramming, and thanks to the reputation of the company to which this ship belonged, the event caused an immense uproar. No one is unaware of the name of that famous English shipowner, Cunard.

In 1840 this shrewd industrialist founded a postal service between Liverpool and Halifax, featuring three wooden ships with 400–horsepower paddle wheels and a burden of 1,162 metric tons. Eight years later, the company's assets were increased by four 650–horsepower ships at 1,820 metric tons, and in two more years, by two other vessels of still greater power and tonnage.

In 1853 the Cunard Co., whose mail–carrying charter had just been renewed, successively added to its assets the Arabia , the Persia , the China , the Scotia , the Java , and the Russia , all ships of top speed and, after the Great Eastern , the biggest ever to plow the seas. So in 1867 this company owned twelve ships, eight with paddle wheels and four with propellers. If I give these highly condensed details, it is so everyone can fully understand the importance of this maritime transportation company, known the world over for its shrewd management.

No transoceanic navigational undertaking has been conducted with more ability, no business dealings have been crowned with greater success.

In twenty–six years Cunard ships have made 2,000 Atlantic crossings without so much as a voyage canceled, a delay recorded, a man, a craft, or even a letter lost. Accordingly, despite strong competition from France, passengers still choose the Cunard line in preference to all others, as can be seen in a recent survey of official documents. Given this, no one will be astonished at the uproar provoked by this accident involving one of its finest steamers. On April 13, 1867, with a smooth sea and a moderate breeze, the Scotia lay in longitude 15° 12' and latitude 45° 37'. It was traveling at a speed of 13.43 knots under the thrust of its 1,000–horsepower engines. Its paddle wheels were churning the sea with perfect steadiness. It was then drawing 6.7 meters of water and displacing 6,624 cubic meters.

At 4:17 in the afternoon, during a high tea for passengers gathered in the main lounge, a collision occurred, scarcely noticeable on the whole, affecting the Scotia's hull in that quarter a little astern of its port paddle wheel. The Scotia hadn't run afoul of something, it had been fouled, and by a cutting or perforating instrument rather than a blunt one. This encounter seemed so minor that nobody on board would have been disturbed by it, had it not been for the shouts of crewmen in the hold, who climbed on deck yelling: \"We're sinking!

We're sinking!\"

At first the passengers were quite frightened, but Captain Anderson hastened to reassure them.

In fact, there could be no immediate danger. Divided into seven compartments by watertight bulkheads, the Scotia could brave any leak with impunity.

Captain Anderson immediately made his way into the hold.

He discovered that the fifth compartment had been invaded by the sea, and the speed of this invasion proved that the leak was considerable. Fortunately this compartment didn't contain the boilers, because their furnaces would have been abruptly extinguished. Captain Anderson called an immediate halt, and one of his sailors dived down to assess the damage.

Within moments they had located a hole two meters in width on the steamer's underside. Such a leak could not be patched, and with its paddle wheels half swamped, the Scotia had no choice but to continue its voyage. By then it lay 300 miles from Cape Clear, and after three days of delay that filled Liverpool with acute anxiety, it entered the company docks.

The engineers then proceeded to inspect the Scotia , which had been put in dry dock. They couldn't believe their eyes. Two and a half meters below its waterline, there gaped a symmetrical gash in the shape of an isosceles triangle. This breach in the sheet iron was so perfectly formed, no punch could have done a cleaner job of it. Consequently, it must have been produced by a perforating tool of uncommon toughness—plus, after being launched with prodigious power and then piercing four centimeters of sheet iron, this tool had needed to withdraw itself by a backward motion truly inexplicable. This was the last straw, and it resulted in arousing public passions all over again.

Indeed, from this moment on, any maritime casualty without an established cause was charged to the monster's account.

This outrageous animal had to shoulder responsibility for all derelict vessels, whose numbers are unfortunately considerable, since out of those 3,000 ships whose losses are recorded annually at the marine insurance bureau, the figure for steam or sailing ships supposedly lost with all hands, in the absence of any news, amounts to at least 200! Now then, justly or unjustly, it was the \"monster\" who stood accused of their disappearance; and since, thanks to it, travel between the various continents had become more and more dangerous, the public spoke up and demanded straight out that, at all cost, the seas be purged of this fearsome cetacean.")

Lesson.create(
  user: admin,
  language: english,
  title: "Story One: Mike is a Cook",
  diff_lev: 1,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643062314/aayytmberomuxeahhmwa.jpg",
  text:
  "Hi there.

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
  user: admin,
  language: english,
  title: "Story Two: Dustin Wants to Take a Vacation",
  diff_lev: 1,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643062314/rlqiclhlm6kromabpcxg.jpg",
  text: "Now let's listen to the story of Dustin, who is excited about his winter holiday.

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
  user: admin,
  language: english,
  title: "Story Three: Karen Gets a Cat",
  diff_lev: 1,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643062315/xxlx3phn1y5b7ovosmwj.jpghttps://res.cloudinary.com/hxgqxwxqv/image/upload/v1643062314/rlqiclhlm6kromabpcxg.jpg",
  text:"A) Karen is bored at work and at home.

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
  user: admin,
  language: english,
  title: "Story Four: My Daughter is a Good Student",
  diff_lev: 1,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643062315/td2isholdxq0bigrrgrf.jpg",
  text:"
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

Lesson.create(
  user: admin,
  language: english,
  title: "Canadian English: Chapter II, Part 1",
  diff_lev: 4,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643062315/vek75y2wo3paukyjeghz.jpg",
  text: "The first Canadians were the native Indians who came from Asia over 10,000 years ago.

They were fishers, hunters and farmers. They developed different cultures in different areas. In Central America these people developed one of the most famous independent centres of world civilization, with science, writing and advanced construction techniques. Scientists now believe there were different waves of settlement from Asia which spread out over the American continent. That is why there are different language groups in different areas. There may have been other visitors to North America over the centuries but we do not know for sure.

The first known European visitors were the Vikings roughly 1,000 years ago. Because of wars and pressure on the land, some Vikings had left Europe and settled in Iceland. For the same reasons they moved on to Greenland. The world was warmer at that time, otherwise Greenland would not have been called Greenland. From there the Vikings went further west and stopped on the east coast of Canada. They found nature there to be very pleasant, green and rich. They fought with the local natives, some of their people were killed and therefore they left and returned to Iceland.

Western Europeans were fishing off the east coast of Canada in the 16th century. Eventually French and English people started settling as farmers and fur traders all along the Atlantic Coast of North America.

Wars between European powers like France, England, Spain and Holland affected developments in North America. In 1763 England defeated France at the battle of Quebec and this meant that Canada became English instead of French. At that time most Europeans in Canada were French speakers. This now started to change.

In 1776 the American War of Independence took place. A new nation was created. The United States. Many people living in the new United States wanted to remain a part of the British Empire. Many tens of thousands of people moved north to Canada. These were the United Empire Loyalists. This was the first large scale movement of English speaking people into Canada. These people were really Americans and they determined how Canadians would speak English.

These people wanted to remain loyal to the King of England. During the 19th century there was major immigration from Great Britain to Canada. Much of this immigration was from Scotland and Northern Ireland. As a result Canada was very closely attached to the British Empire.")


Lesson.create(
  user: admin,
  language: spanish,
  title: " ¿Conoces a ese chico?",
  diff_lev: 1,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643442628/Elegant-Big-sombrero-hat-Hat-Large-Brim-Fedoras-Wool-Felt-Hat-Women-Bow-Panama-Cap-Australian.jpg_640x640_c2cvn7.jpg",
  text:
"A: ¿Conoces a ese chico de los pantalones amarillos?

B: No, no sé quién es.

A: ¿Y a la chica del sombrero azul?

B: Sí, esa es una vecina.

A: ¿Cómo se llama?

B: No lo sé.

Es de mi edificio, pero no sé cómo se llama. ¿Por qué lo preguntas?

A: Nada, por curiosidad.")

Lesson.create(
  user: admin,
  language: spanish,
  title: "Hay almas que tienen",
  diff_lev: 3,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643442855/1642496508_5d377f2c_jkb9xy.jpg",
  text:
"Hay almas que tienen

Hay almas que tienen azules luceros, mañanas marchitas entre hojas del tiempo, y castos rincones que guardan un viejo rumor de nostalgias y sueños.

Otras almas tienen dolientes espectros de pasiones. Frutas con gusanos. Ecos de una voz quemada que viene de lejos como una corriente de sombra. Recuerdos vacíos de llanto y migajas de besos. Mi alma está madura hace mucho tiempo, y se desmorona turbia de misterio. Piedras juveniles roídas de ensueño caen sobre las aguas de mis pensamientos.

Cada piedra dice: \"¡Dios está muy lejos! \"")

Lesson.create(
  user: admin,
  language: spanish,
  title: "Historia de la célebre Reina de España Doña Juana",
  diff_lev: 6,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643443412/1642497003_a094e69d_xgdl5t.jpg",
  text:
"Historia de la célebre Reina de España Doña Juana, llamada vulgarmente, La Loca, by Anonymous

CAPITULO PRIMERO.

De cuáles fueron los padres de Doña Juana la Loca, y las cosas que pasaban en su palacio.

Don Fernando y doña Isabel, célebres y nunca bien ponderados reyes católicos, ocupaban los tronos de Aragon y Castilla, dando un ejemplo de moralidad y sabiduría á toda su córte, y siendo estimados altamente, no solo por la aristocrácia de su época, sino tambien por todos sus súbditos.

Muy agradecidos los régios esposos á las muestras de cariño que estos continuamente les prodigaban, no podian menos de espresarles su reconocimiento de una manera mas loable, porque estos monarcas no se desdoraban de que cualquier vasallo hiciese parar su carruaje, aun en los sitios mas públicos y concurridos, para prestar atencion á lo que les quisiesen manifestar. No obstante de esto, siempre se ha conocido, segun los historiadores, el no faltar nunca entre los palaciegos aquellas comunes discordias y hablillas, hijas de la envidia. Ninguna prueba que caracterice mas esta verdad, que la de que hallándose ya en cinta la reina Isabel la Católica, comenzasen á propalar varios personajes, entre los cuales se hallaba D. Enrique de Villena, que la sucesion que esperaban no podia menos de ser bastarda; y esto lo deducian de las varias escenas que habian presenciado en palacio.

Mas sin embargo de ser D. Fernando tan previsor, y de inspeccionar tanto las cosas que le eran anejas, parece que estas voces las tomó por vagas, y no se cuidó de ellas; asi es, que dichos personajes atribuian la indolencia de D. Fernando en este punto, al miedo ó al escesivo amor que profesaba á Doña Isabel, la cual unia á los vínculos de esposa, el ser nieta de su hermano.

Miras particulares se llevaban el de Villena y otros en difundir por el vulgo tales voces, pero miras que mas tarde fueron descubiertas por los que mas le vendian amistad, declarando al soberano verbalmente los proyectos concebidos por ellos, y mostrándole por escrito la correspondencia que habian interceptado dirigida á D. Juan de Portugal, á la cual contestó inmediatamente D. Fernando por medio de su enviado de negocios, Lope de Alburquerque. No habiendo querido Don Juan de Portugal dar audiencia al enviado de Castilla, y habiéndolo llegado á saber muy pronto D. Fernando, montó en cólera de tal suerte, que nadie se atrevia á dirigirle una palabra.

Procuraban aplacarle en algunos momentos de furia, pero todo era en vano; amenazaba que haria entender á sus contrarios lo que merece el que agravia al monarca de Castilla, y que mostraria cuán grandes eran sus fuerzas contra los que le enojaban. Tampoco fueron bastantes á aplacar su ira los ruegos de su hermano D. Pedro de Acuña, conde de Buendia, quien le protestaba no se irritase tan terriblemente, que tal vez una fraguada noticia, como podia ser, fuera el motivo del ludibrio y las imprecaciones que dirigia sin distincion de parientes y amigos. Solo á las amonestaciones de un personage que por respeto se calla, era á las que daba cabida el rey D. Fernando.

Este personaje se supo grangear su cariño por su bella cualidad, que era la de todo adulador, logrando con sus palabras henchir el pecho del monarca cada dia de mayor pasion. Aun la misma reina Isabel tuvo en muchas ocasiones que valerse de este favorito para hablar con su real esposo.

Estos sucesos ocurrian en el palacio de la imperial Toledo, cuando dió á luz la reina Isabel, el 6 de noviembre de 1479, á la princesa Doña Juana de Castilla, muy parecida á su abuela Doña Juana, esposa de D. Juan III de Aragon, segun afirma el autor de _las Reinas Católicas_.

El nombre de Doña Juana es el de uno de los monarcas que por mas largo tiempo han figurado en España al frente de los documentos y órdenes reales, y no obstante se puede afirmar que en pocas ocasiones, ó mejor dicho en ninguna, tuvo parte la aficion á los trabajos que le proporcionaba su elevada gerarquia. Esta especie de hastío al destino árduo que debia ejercer á la edad que requieren las leyes, se le iba aumentando con los años; por el contrario, cualquier faena á que la dedicasen de las propias de su sexo, la abrazaba con el mas indecible júbilo; asi es que, todavia de corta edad, era la admiracion de cuantos la oian y observaban sus entretenimientos.

A esto se puede añadir que su nombre no era mas que una mera forma para dar á conocer que la heredera del trono de Castilla existia.

Cuando pocos años despues su hijo el célebre Cárlos V tomó las riendas del gobierno de España, por la habitual imposibilidad de su madre, observó el mismo método, ora porque asi lo dispusieron en varios Estamentos del reino, ora porque ella era la soberana en realidad y ora por respeto y atencion, como lo hizo conocer al renunciar los estados en su hijo Felipe, al cual pedia encarecidamente hiciese conservar ileso el nombre de su desventurada abuela al frente de los negocios públicos, para no causarla descontento.

Cincuenta años conservó esta soberana el título de reina de España, á pesar de no haber gobernado ni un solo dia; tal era la enagenacion mental de que se hallaba poseida causada por los poderosos y bien fundados motivos que mas adelante se irán conociendo.

El memorable D. Francisco Jimenez de Cisneros y el rey Don Fernando, ordenaron, como gobernadores durante la menor edad de Cárlos V, no se hiciese pública la insuficiencia de Doña Juana, á pesar de estar íntimamente convencidos de su incapacidad; de manera que por muchos y reiterados esfuerzos que hicieron algunos para declarar su nulidad, no lo lograron; y eso que para nada les estorbaba, pues que jamás se resintió de que no contasen con su voluntad para ninguno de los actos de gobierno.

Su razon se encontraba sumamente turbada por los impulsos de una lícita y vehemente pasion: por esta causa fue su vida cruel la de un reo aprisionado; y si alguna vez pareció resentirse de su precaria suerte, era para en seguida fomentarla ella misma con los padecimientos de su imaginacion ardiente, creyéndose que tal vez cometeria un desacato contra el objeto de sus mas tiernas adoraciones.

Hé aqui el motivo por qué un nombre de suyo tan esclarecido, apenas ha figurado bajo, el concepto político, en el catálogo inmenso de los soberanos españoles; y por consecuencia es enteramente nulo.

Mas no obstante de todo, fue reina de esta magnánima y poderosa nacion, hija de los grandes reyes católicos D. Fernando y Doña Isabel, y madre del noble y valiente emperador Cárlos V; de suerte que los pormenores de su vida privada, los motivos por qué le sobrevino su demencia, y el fundamento con que se la llama la Loca, no pueden menos de escitar la curiosidad, y con doble causa, porque puede uno mirarse en esta soberana, como en el triste espejo de los funestos resultados que las violentas pasiones llevadas al estremo tienen, siempre que no se modifican y reprimen con la razon.

Dotada Doña Juana de un talento nada comun, de una viva y ardiente imaginacion, fue educada de una manera no vulgar para aquella época: y especialmente en la lengua greco-latina, hizo tan admirables adelantos, que la hablaba con una soltura encantadora. El sábio Luis Vives afirma que de cualquier materia que se le tratase en este idioma, contestaba repentinamente como si fuera en castellano. A estas cualidades unia la de una figura esbelta y de mucho interés; era el tipo de la hermosura, colmada de gracia y dignidad: sus grandes ojos, espresivos y rasgados, denotaban el raro talento y energia de su alma, á lo que acompañaban los dignos y elegantes modales de la córte de Isabel, dechado de virtudes y moralidad.

Todas estas grandes circunstancias, reunidas con el poderío de sus padres, hacian de Doña Juana uno de esos partidos mas aventajados para cualquier jóven príncipe de Europa. Estas mismas circunstancias la constituian en una infanta acreedora á ser idolatrada, aun por los que no tuviera el placer y el honor de admirarla. Prueba evidente, que no tardaron mucho tiempo algunos príncipes en ver cuál era el que podia ser dueño de joya de tan inestimable valor.

D. Fernando y Doña Isabel no quisieron tampoco prolongar su casamiento, asi es que contando apenas quince años, esto es, en 1494, ajustaron las deseadas bodas con D. Felipe, archiduque de Austria, duque de Flandes, de Artois y del Tirol, é hijo del emperador de Alemania, Maximiliano I. Ajustadas que fueron, al instante se dió principio á los preparativos de marcha con el boato y solemnidad dignos de la hija de tan poderosos señores. Una armada de ciento veinte navíos de alto bordo se aprestó en el puerto de Laredo, embarcándose en ella quince mil hombres de guerra no incluyendo la tripulacion.

A Don Alonso Enriquez, gran almirante de Castilla, estaba encomendado el mando de esta flota: iba de capellan mayor D. Diego de Villaescusa, dean de Jaen; y la encargada por el rey de servir y hallarse á las inmediatas órdenes de la infanta, era Doña Teresa de Velasco, esposa del admirante que dirigia aquella espedicion. La cámara y todos los destinos pertencientes á su persona, se servian por damas y caballeros de la primera nobleza de España; asi lo dice en las listas que de ellos forma D. Lorenzo de Padilla. Inútil es hacer mencion de las ropas y alhajas que habian de adornar á tan augusta princesa: se puede decir para abreviar que se habian dispuesto con elegancia y profusion.

Terminados los preparativos, se dirigió toda la real familia por Almazan al puerto de Laredo, para despedir á tan escelsa infanta, escepto el rey D. Fernando que por hallarse celebrando de Córtes en Aragon, no pudo verificarlo, muy á pesar suyo. El malogrado príncipe D. Juan, hermano de Doña Juana, y su augusta madre la acompañaron hasta la entrada del navío, donde anegados en un mar de lágrimas, se dieron mútuamente el mas tierno y afectuoso á Dios. A Dios, que resonó por todos los ángulos de la embarcacion, en señal de reconocimiento á las reales personas que quedaban en tierra. El dia 19 de agosto de 1496 se hicieron á la vela con direccion á los Estados flamencos.

Ningun contratiempo se habia notado, ninguna cosa que hubiera venido á turbar la tranquilidad de la ilustre viajera habia acurrido, hasta tocar en las costas de Flandes, en donde se levantó un temporal tan borrascoso, que se vieron precisados á guarecerse en el primer punto de salvacion que encontraron. Grande era la afliccion de Doña Juana al ver en tan inminente peligro su vida, pero Dios quiso pudiesen arribar en el puerto de Toorlan, en Inglaterra, despues de haber caminado por término de mas de dos horas, luchando con los embravecidos oleajes que un momento mas los hubiera sumergido en lo profundo de los mares. Permanecieron en esta poblacion siete dias, durante los cuales fue la infanta muy obsequiada por las damas y caballeros principales de aquel pais, que acudieron presurosos á besar su mano y juntamente á ofrecerla sus servicios.")


Lesson.create(
  user: admin,
  language: spanish,
  title: "Levantarse",
  diff_lev: 2,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643692818/1642151671_10719f51_z77128.jpg",
  text:
"Quizás la peor parte del día es cuando hay que levantarse.

Despertarse es fácil, pero levantarse es otra cosa. Hay que hacer un esfuerzo para ponerse en pie. Lo mejor es no pensarlo y saltar de la cama.

Para facilitar las cosas suelo utilizar dos despertadores, uno cerca de la cama y otro un poco más lejos.

El primero suena 5 minutos antes que el segundo, así empiezo a despertarme poco a poco. Para el segundo tengo que ponerme en pie, andar dos metros y apagarlo.

De lunes a viernes, la hora de levantarse para mí es a las 7:15, pero muchos días me despierto antes por los ruidos de la calle, en especial de los vehículos, o porque mis hijos hacen algún ruido si salen al baño por la noche.

En ocasiones, si me despierto en mitad de la noche, por el motivo que sea, ya no puedo dormir otra vez, así que intento relajarme y, si no lo consigo, me levanto y me pongo a leer, a ver la televisión, a escuchar mi MP3 o a usar mi ordenador.

Me gusta madrugar y no tengo muchos problemas para levantarme, pero a veces tengo que hacer un gran esfuerzo si durante la noche no he dormido al menos 5 horas.")


Lesson.create(
  user: admin,
  language: spanish,
  title: "La nota de español",
  diff_lev: 3,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643705006/espa_C3_B1ol-con-juan-1001-reasons-to-learn-h6yquAwjN3H-_4FShZ6uT9E.1400x1400_gmbdxs.jpg",
  text:
"Hola, chicos, ¿qué tal? Bienvenidos a un nuevo episodio de Español con Juan, un podcast en español para aprender español.

¿Qué tal? ¿Cómo va la semana?

Yo bien, aunque esta semana ha sido un poco, como puedo decir, un poco estresante para mí. He tenido que trabajar mucho, tanto en la universidad, como aquí, en internet, en Español Con Juan.

En mi trabajo en la universidad… bueno, no sé si lo sabéis, pero si no lo sabéis yo os lo digo ahora o, mejor dicho, os lo recuerdo, porque estoy seguro de que la mayoría ya lo sabéis, sí… yo soy, esto, yo soy profesor de español en una universidad de Londres y… bueno, esta semana no hemos tenido clases, bueno en realidad en estos meses no tenemos clases… no sé cómo funciona la universidad de vuestros países, pero aquí, donde yo trabajo, solo damos clase desde octubre hasta marzo, hasta final de marzo. Ahora, estos meses, de abril a junio hacemos exámenes, corregimos trabajos de los estudiantes, tenemos talleres prácticos, tutorías… en fin, hacemos otras muchas cosas, pero no damos clase.

Y la verdad es que yo prefiero dar clase.

A mí hacer exámenes no me gusta mucho. No me gusta nada, la verdad. Para mí, no sé, para mí no tiene mucho sentido examinarse de una lengua… no sé, yo veo a los estudiantes obsesionados con la nota, con sacar una buena nota…

Veréis, no sé si seré capaz de explicarlo, pero una cosa es aprender español por placer, porque te gusta, porque te apetece, porque te interesa, porque estás enamorado del idioma y otra cosa bien distinta es aprender español para sacar una buena nota, para tener una buena nota en la carrera que estás estudiando.

Si la motivación principal para aprender español es la nota, sacar una buena nota, entonces… ¿dónde está el placer de estudiar un idioma?

Eso es lo que pasa en la universidad, en las escuelas, en el sistema educativo en general, ¿no? Se pierde el placer, las ganas de aprender, de aprender por aprender y lo único que queda es el interés de sacar una buena nota.

Y yo entiendo a los chicos, ¿eh? Yo los entiendo.

Os explico. Mis estudiantes de la universidad son gente muy joven. Tienen unos 18, 19 o 20 años, en general, más o menos. ¿Cuál es su preocupación? ¿Qué es lo que realmente les interesa? Pues, obviamente, sus estudios, hacer bien en sus estudios, sacar buenas notas…

Los chicos que tengo en clase estudian español como una parte de sus carreras. Ellos no estudian español como carrera.

Ellos estudian otras carreras. No sé, por ejemplo, tengo muchos estudiantes de economía, de matemáticas, de física, de historia, de historia del arte, de medicina, de arquitectura… en fin, de todo. Mis estudiantes estudian carreras diferentes en la universidad y, entre todas las asignaturas que estudian, estudian también un idioma, en este caso, español. O sea, estudian por ejemplo, economía y español o historia del arte y español… ¿entendéis? Entonces, para ellos, la nota en español cuenta mucho, cuenta muchísimo. Si ellos consiguen sacar una nota alta en español, la media, la media de sus carreras puede subir, puede subir mucho y, por tanto, en consecuencia, su máxima preocupación, su máximo interés es sacar una buena nota. Es normal. Yo lo entiendo.

Ellos, cuando vienen a mis clases, sí, de acuerdo, quieren aprender español, les gustaría aprender español y en general se lo pasan bien, pero realmente, realmente lo que más les interesa es la nota, sacar una buena nota. El español, aprender español, es secundario.

Y es normal, es normal que sea así porque, bueno, porque… porque la nota es muy importante. La nota al final de los estudios, la nota que sacan al final de los estudios es muy importante a la hora de encontrar trabajo, a la hora de encontrar un buen trabajo. Bueno, la cuestión de qué es realmente un buen trabajo la dejamos para otro día.

Hoy no hablamos de ese tema, pero digamos que para la mayoría de ellos, para la mayoría de los chicos y chicas que estudian conmigo, un buen trabajo es simplemente un trabajo en el que se gana mucho dinero. Pero bueno, ese es otro tema, de qué es exactamente un buen trabajo hablaremos otro día.

Pero, en fin, a lo que iba, es absolutamente normal que su máxima preocupación sea sacar una buena nota en la universidad, y por tanto en español, porque eso significa obtener un buen trabajo cuando terminen su licenciatura, cuando terminen la universidad.

Y además hay que tener en cuenta que la universidad aquí en Reino Unido es muy cara, es carísima. No sé en vuestros países, pero aquí la universidad es supercara.

Para los ingleses y para los ciudadanos europeos en general, creo que cuesta unas 9.000 libras al año. 9000 libras esterlinas al año, cada año. Eso es mucho dinero. Y eso solo la matricula. Aparte hay que pagar, claro, la vivienda, la comida, el transporte, los libros… en fin, y la vida en Londres. Londres es una de las ciudades más caras del mundo. Todo es muy caro. Entonces, claro, para ellos, para los estudiantes, es muy importante la nota de la universidad. Es una inversión. Para ellos, ir a la universidad es una inversión. Cuesta mucho dinero. Les cuesta mucho dinero, pero lo ven como una inversión para el futuro.

Si al final consiguen un buen trabajo, si cuando se licencian consiguen un buen trabajo, el tiempo y el dinero empleado en la universidad habrá valido la pena.

Pero, claro, eso hace que durante el tiempo que pasan en la universidad estén muy nerviosos, estresados y que su máxima preocupación sea, no tanto aprender, sino sacar una buena nota. Eso, creo que en general, no solo en español. Supongo que en todas las asignaturas será más o menos igual.

No quiero decir que no tengan ganas de aprender.

Por supuesto que tienen ganas de aprender, que son curiosos, que les gusta descubrir cosas nuevas, desarrollarse, aprender… los chicos tienen muchas ganas de aprender, lo que pasa es que el sistema, el sistema educativo, tal y como está montado, les empuja, les obliga, les fuerza a preocuparse sobre todo por las notas, por sacar unas buenas notas, no por aprender.

Y esto me ha costado entenderlo, ¿eh? Sí, yo esto al principio no lo entendía. Yo, al principio, cuando empecé a trabajar en la universidad, pensaba que los estudiantes querían, principalmente, aprender español.

Y por eso yo preparaba muchas actividades divertidas, juegos, hacíamos un montón de cosas interactivas, veíamos películas, en fin, yo intentaba que ellos aprendieran español y que se lo pasaran bien, pero poco a poco me he ido dando cuenta de que en realidad a ellos lo que realmente les interesa es el resultado final, sacar una buena nota y lo de aprender español es, en realidad, algo secundario. Triste, pero es así. Al final es así y yo no puedo hacer mucho para cambiarlo. Es el sistema. Funciona así. No sé si será así en todas las asignaturas. Sospecho que más o menos sí, que será más o menos igual en todas la asignaturas.

Y es una pena que sea así, ¿no?

Es una pena porque la universidad debería ser el lugar donde se motivara a la gente por aprender, donde se impulsara la creatividad, la curiosidad, el deseo de saber, el deseo de conocer y de aprender cosas nuevas. Y no, me parece que desgraciadamente no es así. Creo que la universidad se ha ido convirtiendo poco a poco en un entrenamiento para obtener un trabajo. Es como si se dijera a los estudiantes que para obtener un trabajo tienen que saltar una serie de obstáculos. Eso es. Las asignaturas de las carreras no son un incentivo para el estudio, para la curiosidad, para saber más… son más que nada una serie de obstáculos que los estudiantes tienen que sortear, que tienen que saltar, digamos. Como en las olimpiadas, ¿no? Habéis visto las carreras de obstáculos, ¿no?

En algunas carreras, para llegar a la meta los corredores tienen que saltar una serie de obstáculos… pues en la universidad pasa algo parecido. Se ponen obstáculos que los estudiantes tienen que saltar si quieren llegar a la meta final, que, claro, es el puesto de trabajo, el puesto de trabajo tan deseado.

Y la verdad es que no me gusta este sistema. No me gusta que el español sea un obstáculo en la carrera de estos chicos, de mis estudiantes de español.

Como estaba diciendo, para mí, al principio, cuando empecé a enseñar español en la universidad, para mí, aprender español era algo maravilloso, algo que te abre puertas a otra cultura, que te puede cambiar la vida, que te hace conocer otras formas de vida, que te descubre un mundo nuevo, un mundo nuevo lleno de libros, de películas, de ciudades, de música… no sé. Para mí, aprender un idioma es algo tan maravilloso, algo que te ayuda para tu propio desarrollo personal. Algo que te cambia por dentro, que te cambia tu personalidad, la percepción que tienes del mundo. Y yo creía que el lugar ideal donde se podía enseñar español era la universidad, que en la universidad todo el mundo estaría deseando aprender por aprender, aprender simplemente por el placer de aprender…

Pero me equivocaba. Vaya si me equivocaba. Todavía no me había dado cuenta de la importancia de los exámenes, de las notas, de las evaluaciones, del resultado final… Todavía no me había dado cuenta de que aquí lo que cuenta no es tanto aprender un idioma sino la nota en el examen de gramática o la nota de la prueba oral.

Total que, bueno, lo que estaba diciendo al principio es que estas últimas semanas no estoy dando clase de español en la universidad, sino haciendo exámenes, corrigiendo trabajos de los estudiantes y… dando notas.

Y cómo decía, lo que realmente me gusta es enseñar español, dar clase de español, pero dar notas y corregir exámenes realmente es lo que menos me interesa. Es quizás lo que me cansa más. Quizás porque no le veo mucho sentido.

Echo de menos dar clase de español en una clase donde la máxima preocupación de los estudiantes sea aprender español, no la nota final.

Y por eso me gusta tanto el trabajo que estoy haciendo en internet. Gracias a internet, gracias a los cursos que hago en Youtube, en Facebook, en nuestro blog… gracias a las redes sociales he llegado a conocer a gente de todo el mundo que está realmente interesada en aprender español. Y eso es un placer. Eso da mucha satisfacción. No tiene comparación. No se puede comparar.

Es también mucho trabajo. Preparar los vídeos, los podcasts, escribir los libros, hacer los cursos online, publicar en facebook… lleva tiempo, lleva mucho tiempo y esfuerzo. No es fácil, es cansado, pero vale la pena. Para mí vale la pena.

Da mucha satisfaccion ver que hay gente interesada en lo que tú haces en todo el mundo, en muchísimos países, que quieren aprender español, de verdad… Eso da mucha satisfacción. Como profesor, esa es la mayor satisfacción. Ver que hay gente a la que estoy ayudando, ver que hay gente que está aprendiendo español conmigo, que está mejorando su español y progresando, que están motivados por aprender español, que hacen preguntas, que quieren aprender..

En fin, a lo que iba, que creo que ya me he vuelto a perder, como siempre. Que me gustaría enseñar más español y hacer menos evaluaciones y menos exámenes.

Que creo que la escuela y la universidad dedica demasiado tiempo a hacer exámenes y a preparar a los estudiantes para el mercado laboral y que debería dedicar más esfuerzo a promover la curiosidad, las ganas de aprender, la creatividad, el placer de aprender por aprender.

En fin, podría seguir hablando de este tema durante horas, pero no quiero aburriros con mis peroratas. ¿Sabéis qué es una perorata? Bueno, una perorata es un discurso muy largo y aburrido. Algo así como un rollo. Sí, una perorata es un discurso largo, muy extenso y aburrido.

Bueno, pues basta de peroratas sobre el estado de la educación. Pero es que, claro, sí, dejadme que diga ya esto último para terminar.

Es que si en general no me gustan los exámenes, en cualquier materia, en cualquier asignatura, en historia o física, por ejemplo, no me gustan los exámenes… pero es que en idiomas les veo muy poco sentido. No me parece que someter a los estudiantes de un idioma a exámenes de gramática, a exámenes orales, en fin, no me parece que ese sea el mejor modo de promover el estudio de un idioma.

Me parece lo contrario, me parece que mucha gente acaba aborreciendo los idiomas porque se enseñan en este contexto de exámenes, notas… No me extraña, la verdad, no me extraña que haya tan poco interés por aprender idiomas, no me extraña que la mayoría de la gente pierda el interés por aprender idiomas… si han estudiado un idioma en la escuela o en la universidad, al final, cuando terminan, tienen asociado estudio de idiomas con exámenes de gramática, pruebas de vocabulario, estrés, nervios, memorización de listas de palabras… en fin, que no, que yo creo que el estudio de un idioma es otra cosa y que la universidad y la escuela deberían sobre todo promover el gusto de aprender por aprender.

Bueno, esto creo que ya lo he dicho antes, ¿no?

Me estoy repitiendo, estoy diciendo lo mismo varias veces, que es lo que ya me han dicho muchas veces que no tengo que hacer; que repito demasiado las cosas, que soy muy machacón… que machaco mucho las cosas, que las digo una y otra vez, una y otra vez… que me enrollo, que me enrollo mucho.

¡Basta! Aquí lo dejo por hoy. No sé si estáis de acuerdo con mis reflexiones. Creo que hay algunos profesores de idiomas entre vosotros. Me gustaría saber qué pensáis sobre estas reflexiones. Si estáis de acuerdo conmigo o si pensáis que estoy equivocado. En fin, dejadme un comentario con vuestra opinión. Yo no tengo por qué tener razón necesariamente. Yo no me considero aquí el profesor que todo lo sabe, ¿de acuerdo?

Yo simplemente expreso mis gustos, mis impresiones, lo que me pasa por la cabeza, pero, claro, yo puedo estar equivocado. A mí me gusta mucho comerme el coco con estos temas, pero nada más. No pretendo tener siempre razón. De hecho, creo que normalmente no tengo razón… pero ese es otro tema.

En fin, que me gustaría conocer vuestro punto de vista. Y si no sois profesores de idiomas, pues también me gustaría saber qué pensáis porque como estudiantes de idiomas seguramente habéis estudiado español en la escuela o en la universidad. Contadme vuestra experiencia. Qué pensáis de lo que he dicho hoy.

Y nada más por hoy. No me enrollo más. Creo que ya basta por hoy. Como decía al principio, esta semana he estado haciendo exámenes en la universidad y he terminado hecho polvo.

Creo que necesito descansar un poco, salir a dar una vuelta. Hoy hace sol aquí en Londres y se está bien en la calle. Así que creo que voy a salir a dar un paseo por el parque.

Os espero la próxima semana, ¿de acuerdo? Os espero la próxima semana aquí, en Español con Juan, un podcast en español para aprender español.")



Lesson.create(
  user: admin,
  language: spanish,
  title: "Ricitos de Oro - Goldilocks",
  diff_lev: 2,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643693994/d821d1e907_SMJ6uJk_opzc5z.jpg",
  text:
"""Érase una vez que había tres osos: un Papá Oso, una Mamá Osa y un Bebé Oso. Ellos vivían juntos en una casa amarilla con un techo rojo en medio de un gran bosque.

Un día, Mamá Osa cocinó un una gran olla de sopa deliciosa y caliente para el desayuno. Estaba muy caliente para comerla, así que los osos decidieron ir por un paseo mientras la sopa se enfriaba.

Cerca del bosque vivía una pequeña niña llamada Ricitos de Oro.

Ricitos de Oro era una niña pequeña y traviesa. En esa mañana, ella estaba jugando en el bosque, lanzando piedras a las ardillas, cuando olió la deliciosa sopa que Mamá Osa había hecho.

\"¡Oh, estoy tan hambrienta!\" pensó Ricitos de Oro. \"Me pregunto si ellos compartirán su sopa conmigo.\"

Ella tocó la puerta de la casa y miró a través de la ventana. Ella vio tres tazones de sopa sobre la mesa de la cocina — pero nadie parecía estar en casa. Entonces Ricitos de Oro entró. (¡Oh, ella era una niña pequeña y traviesa!)

Primero, Ricitos de Oro probó la sopa en el tazón de Papá Oso. \"¡Ay! ¡Esta sopa está muy caliente!\", dijo ella.

Entonces, Ricitos de Oro probó la sopa en el tazón de Mamá Osa. \"¡Puaj! ¡Esta sopa está muy fría! \", dijo ella.

Finalmente, Ricitos de Oro probó la sopa en el tazón de Bebé Oso. \"¡Mmm, esta sopa es perfecta! \", dijo ella; y se comió el tazón entero de sopa.

Con el estómago lleno y satisfecho, Ricitos de Oro buscó algún lugar para sentarse. Ella vio tres sillas junto a la chimenea. Primero, ella se sentó en la silla de Papá Oso. \"¡Esta silla es muy dura!\", se quejó ella.

Luego, ella se sentó en la silla de Mamá Osa. \"¡Esta silla es muy suave!\", se quejó ella.

Finalmente, ella se sentó en la silla de Bebé Oso. \¡Ah, esta silla es perfecta!\", dijo ella.

¡Pero entonces la silla se rompió! \"Debo haber comido demasiada sopa\", pensó para sí misma Ricitos de Oro.

Ella todavía estaba cansada, así que subió las escaleras a la habitación, donde había tres camas. Primero, Ricitos de Oro probó la cama de Papá Oso, pero a ella no le gustó. \"¡Esta cama es muy dura!\", dijo ella.

Luego, ella probó la cama de Mamá Osa, pero no le gustó tampoco. \"¡Esta cama es muy suave!\", dijo ella.

Finalmente, ella probó la cama de Bebé Oso. \"¡Esta cama es perfecta!\", dijo ella alegremente, y cayó en un profundo sueño lleno de sueños sobre galletas y gatitos.

Pronto, los osos regresaron de su paseo, listos para comer su desayuno. Pero ellos se sorprendieron de ver las cucharas ya puestas en sus tazones de sopa. \"¡Alguien ha estado comiendo mi sopa!\", exclamó Papá Oso.

\"¡Alguien ha estado comiendo mi sopa también!\", exclamó Mamá Osa.

\"Alguien ha estado comiendo mi sopa... y mi tazón está vacío!\", sollozó Bebé Oso, quien amaba la sopa.

Luego, los tres osos vieron que sus sillas habían sido usadas. \"¿Quién se ha estado sentando en mi silla?\", preguntó Papá Oso.

\"¿Quién se ha estado sentando en mi silla?\", preguntó Mamá Osa.

\"¿Quién se ha estado sentando en mi silla... y la rompió?\", preguntó Bebé Oso, y comenzó a llorar.

Los tres osos subieron las escaleras rápidamente para revisar su habitación. \"Alguien ha estado durmiendo en mi cama!\", gruñó Papá Oso.

\"Y alguien ha estado durmiendo en mi cama!\", gruñó Mamá Osa.

\"Alguien ha estado durmiendo en mi cama... y aún está ahí!\", gritó Bebé Oso tan fuerte que Ricitos de Oro despertó.

Cuando ella vio a los tres osos molestos, se puso muy asustada. Ella saltó de la cama, bajó corriendo las escaleras, corrió por la puerta y no paró de correr hasta que ella llegó a su propia casa.

Adentro, ella encontró su propio tazón y su propia silla. Y esa noche, justo antes de que fuera a dormir en su propia cama, ella se prometió a sí misma:

... \"Nunca comeré sopa de nuevo.\"""")


Lesson.create(
  user: admin,
  language: chinese,
  title: "森林王子 1: 人类宝宝",
  diff_lev: 3,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643694943/f2da15ee29_fjwO6Zr_d1thre.png",
  text:
"""有 一天 晚上 ， 森林 里 特别 温暖 。 月光 明亮 ， 照进 狼 洞口 。 狼 爸爸 休息 一整天 后 醒过来 ， 打了个 哈欠 。 狼 妈妈 躺 在 近处 。 她 把 鼻子 放在 滚来滚去 叫个不停 的 四只 狼 宝宝 身边 。 狼 爸爸 伸 了 个 懒腰 。 “ 狼 妈妈 ， 又 该 去 打猎 了 。

” 这时 ， 洞口 出现 一个 影子 ， 长着 一条 毛茸茸 的 尾巴 。 狼 爸爸 皱起 了 眉头 。 那 是 豺狼 塔巴 其 。 塔巴 其 总是 要 吃 的 ， 所以 狼 爸爸 和 狼 妈妈 很 讨厌 他 。 他们 也 很 怕 塔巴 其 ， 因为 塔巴 其 又 狡猾 ， 又 脾气坏 。 有时候 ， 他会 疯狂 地 在 森林 里 跑 ， 看见 什么 就 咬 什么 。 当 塔巴 其 发疯 的 时候 ， 甚至 连 凶恶 的 老虎 谢尔坎 也 离 他 远远 的 。 “ 我 肚子饿 。 ” 塔巴 其说 。 “ 你 进来 看看 吧 ， 塔巴 其 。 ” 狼 爸爸 叹 了 口气 说 ，“ 可是 ， 我 可以 向 你 保证 ， 这里 没有 食物 。 ” “ 我 也许 能 找点 吃 的 。

” 塔巴 其 回答 。 他 慢慢 地朝洞 里面 走 去 ， 用 鼻子 到处 闻 。 很快 ， 他 就 发现 了 一根 放 了 很 久 的 骨头 ， 上面 有 一点 肉 。 “ 谢谢 你 的 食物 ， 很 好吃 。 ” 塔巴 其说 ， 舔 了 舔 嘴唇 。 他 盯 着 小小的 狼 宝宝 。 “ 哎哟 ， 你 的 孩子 们 真 好看 。 ” 狼 妈妈 走近 孩子 们 。 她 和 狼 爸爸 对视 了 一眼 ， 显得 很 不安 。 “ 啊 ， 还有 ......” 塔巴 其 继续 说 ，“ 谢尔坎 发现 了 几个 新 的 打猎 地点 。 他 告诉 我 他 会 暂时 在 这里 打猎 。 ” “ 在 这里 ？

” 狼 妈妈 惊讶 地说 。 “ 可是 ， 他 没有 权利 在 这里 打猎!” 狼 爸爸 大 喊道 。 “ 谢尔坎 必须 呆 在 河边 ， 那 是 森林 法则 !” 塔巴 其笑 了 。 “ 要 不要 我 告诉 他 你 在 担心 什么 ？ ” “ 出去!” 狼 爸爸 厉声 说 ，“ 去 跟 你 的 主人 打猎 吧 ， 塔巴 其 ， 你 折磨 了 我们 一个 晚上 ， 够 了 。 ” “ 我会 走 的 。 ” 塔巴 其 平静 地说 ，“ 不过 ， 别忘了 谢尔坎 的 新 打猎 地点 ， 我 警告 过 你 。 其实 ， 你 现在 就 能 听见 他 的 声音 。 他 在 下面 的 灌木 里 打猎 呢 。

” 塔巴 其 走 后 ， 狼 爸爸 走出 了 洞 。 他 真的 听见 下面 山谷 里 传来 老虎 的 低 吼 。 狼 妈妈 走 出来 ， 站 在 他 旁边 。 “ 看来 谢尔坎 今晚 不会 吃 动物 ， 我 觉得 他会 吃 人 。 ” 狼 爸爸 龇 了 龇 白白的 牙齿 。 “ 森林 里 瓢虫 和 青蛙 那么 多 。 老虎 为什么 非得 吃 人 呢 ？ ” 狼 妈妈 叹 了 口气 。 森林 里 有 一条 重要 法则 —— 动物 不 可以 吃 人 。 老虎 的 吼声 越来越 大 ， 突然 ， 传来 了 哭声 。 狼 爸爸 和 狼 妈妈 听得见 谢尔坎 在 灌木丛 里 痛苦 地 滚来滚去 。 他 疼 哭 了 。

“ 那 只 傻 老虎 可能 跑 进 了 人类 的 篝火 ， 听 上去 他 的 脚 好像 被 火烫 了 。 ” 狼 爸爸 说 。 狼 妈妈 动了动 一只 耳朵 ， 仔细 地 听 着 。 “ 好像 有 什么 东西 往 山顶 跑 呢!” 附近 的 灌木 沙沙 响 了 起来 。 狼 爸爸 放低 身子 准备 出击 。 可是 ， 突然 ， 狼 妈妈 惊讶 地 倒吸 了 一口气 。 “ 是 个 人类 宝宝!” 一个 小 男孩儿 站 在 狼 爸爸 和 狼 妈妈 面前 。 这个 小 人类 看着 狼 爸爸 的 脸 ， 眨 了 眨眼睛 。 “ 狼 爸爸!” 狼 妈妈 小声 说 ，“ 快!

把 这 小 男孩儿 弄 到 我们 洞里 去!” 狼 爸爸 走上 前 ， 轻轻地 叼 住 了 小 男孩儿 的 脖子 。 然后 ， 把 小 男孩儿 叼 进洞 里 放在 了 狼 宝宝 们 旁边 。""")


Lesson.create(
  user: admin,
  language: chinese,
  title: "森林王子 2: 岩石会议",
  diff_lev: 3,
  url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643704665/Screen_Shot_2022-02-01_at_4.34.26_PM_txncmd.png",
  text:"""森林 王子 2: 岩石 会议 狼 妈妈 非常 惊讶 ， 目不转睛 地 盯 着 那个 小 人类 。 “ 真小!  ” 狼 妈妈 温柔 地说 。 那个 小 男孩儿 挤进 两只 狼 宝宝 中间 取暖 。 “ 你 看! 他 不怕 我们 ， 也 不怕 宝宝 们 。 ” “ 我 听说 过有 人类 小孩儿 和 狼群 一起 生活 。” 狼 爸爸 说 ，“ 可是 ， 在 我们 狼群 里 ， 我 从来没 见过 。 ” 这时 ， 狼 爸爸 和 狼 妈妈 听到 什么 声音 ， 朝 洞口 转过身 去 。 原来 是 塔巴 其 和 老虎 谢尔坎来 了 。 “ 那个 小孩儿 在 这儿 ， 主人! ” 豺狼 兴奋 地喊 着 ，“ 我 看见 他 了 。 ” “ 谢尔坎 ， 您 的 来访 让 我们 非常 荣幸 。 ” 狼 爸爸 很 有 礼貌 地说 。 但 他 的 双眼 却 闪烁着 愤怒 。 “ 您 需要 什么 ？ ” “ 一个 人类 孩子 朝 这边儿 走 了 。 ” 谢尔坎 说 ，“ 他 的 父母 逃跑 了 。 把 人类 的 孩子 交给 我 。” 幸好 洞口 很窄 ， 谢尔坎 进不来 。 “ 我们 狼 是 自由 的 动物 。 ” 狼 爸爸 说 ，“ 我们 听头 狼 的话 ， 不 听 你 的 。 ” 老虎 的 怒吼 在 洞里 回荡 。 狼 妈妈 跳到 了 谢尔坎 面前 。 在 黑暗 中 ， 她 的 眼睛 像 两个 绿色 的 月亮 。 “ 那个 人类 孩子 是 我 的! ” 狼 妈妈 咆哮 着 ，“ 孩子 不会 被 杀死 的 。 孩子 会 和 狼群 一起 奔跑 ， 和 狼群 一起 打猎 。 现在 ， 请 你 离开 ， 谢尔坎!” 狼 爸爸 惊讶 地 看着 这 一幕 。 狼 爸爸 忘 了 他 的 妻子 生气 时会 有 多 可怕 。
  
  谢尔坎 退到 洞口 外面 。 “ 我 等 着 看 狼群 会 怎么 处理 人类 的 孩子! ” 他 龇牙 低 吼 ，“ 那个 孩子 是 我 的 ， 他会 死 在 我 的 牙 下!” 狼 妈妈 跳 到 宝宝 们 中间 。 狼 爸爸 看着 老虎 大步 离开 。 “ 谢尔坎 说 了 一个 事实 。 “ 狼 爸爸 说 着 叹 了 一口气 ，“ 我们 必须 给 狼群 看 这个 人类 孩子 。 你 真的 打算 收留 他 吗 ？ ” “ 我 当然 要 收留 他!” 狼 妈妈 厉声 说 ，“ 这个 可怜 的 小家伙 晚上 自己 饿着肚子 来到 这里 。 我要 给 他 起名叫 毛 克利 。 ” 她 接着 说 ，“ 总有一天 ， 他会 抓到 谢尔坎 ， 就 像 那 只 老虎 抓 他 一样 。” 狼 爸爸 很 担心 。 “ 我们 狼群 会 说 什么 呢 ？ ” 森林 法则 很 清楚 。 狼群 保护 小狼 直到 他们 足够 强大 去 自己 打猎 。 但是 ， 狼群 好像 不会 保护 一个 人类 宝宝 。 “ 我们 以后 再说 这件 事 吧 。 ” 狼 妈妈 坚定 地 回答 。 * 每个 月 月 圆 的 时候 ， 狼群 就 开 一次 会 。 所有 的 新 父母 都 要 给 大家 看 他们 的 孩子 们 。 在 下 一次 狼群 会议 的 那天 晚上 ， 狼 爸爸 和 狼 妈妈 去 参加 岩石 会议 。 狼 宝宝 们 和 毛 克利 跟 在 他们 后面 跑 。 岩石 会议 在 山顶 上开 ， 那里 有 很多 石头 和 巨石 。
  
  阿克拉 是 最 厉害 的 大灰狼 ， 他 趴在 一块 岩石 上 。 现在 ， 他 领导 这个 狼群 已经 一年 了 。 他 是 一只 智慧 、 健壮 的 头 狼 ， 了解 人类 的 方式 和 习俗 。 岩石 会议 非常 安静 。 所有 的 父母 都 围成 了 一个 圆圈 。 在 圆圈 中央 ， 狼 宝宝 们 一起 打滚 、 玩耍 。 狼 父母 们 一个 接 一个 地 给 大家 看 自己 的 孩子 。 “ 哦 ， 大家 快 看! ” 阿克拉 喊道 。 狼 妈妈 们 激动 地 重复 道:“ 哦 ， 大家 快 看 ！ ” 狼 妈妈 的 毛抖 了 一下 。 差不多 到时候 该 给 大家 看毛 克利 了 。
  
  狼群 看到 这个 长相 奇怪 的 人类 宝宝 会 说 什么 呢 ？""")

  Lesson.create(
    user: admin,
    language: chinese,
    title: "马云说英语被纠正！主持人光速打脸",
    diff_lev: 4,
    url: "https://res.cloudinary.com/hxgqxwxqv/image/upload/v1643704221/maxresdefault_a5ab6f21._fqzvwd.jpg",
    text:"""今天 呢 ， 我 在 网上 看到 了 一条 热 搜 ， 这条 热 搜 的 内容 是

    马云 说 英语 被 纠正
    
    大家 都 知道 马云 的 英语 很 好 对 不 对 ， 所以 我 就 很 好奇
    
    到底 是 谁 纠正 了 他 的 英语 呢 ？ 我们 马上 来看 一下 吧
    
    ok， 我们 都 知道 发生 了 什么 事 了 对 不 对
    
    看上去 呢 ， 像 马云 在 表达 的 时候 出现 了 错误
    
    然后 女 记者 女 主持人 呢 纠正 了 他
    
    场面 一度 很 尴尬
    
    那么 我们 就 一点点 来 剖析 好 了
    
    我们 首先 看 一下 马云 的 表达 到底 有没有 问题
    
    大家 都 可以 看到 其实 马云 在 这里 说 should 的 时候 呢
    
    他 只 说 了 一半 ， 有点像 shu，shu
    
    说明 呢 他 说 突然 不想 说 这个 单词 或者 知道 自己 突然 说错 了
    
    马上 收回 来 的 这种 感觉
    
    大多数 人 还是 认为 他 说 的 是 will， 所以 马云 的 表达 其实 没有 错
    
    只是 他 前面 有点 卡壳 了 一下
    
    那 我们 再 看 一下 第二个 部分 ， 主持人 的 纠正 到底 有没有 问题
    
    从 明确 意思 这个 方面 出发 的话
    
    主持人 这样 纠正 他 虽然 让 他 很 尴尬
    
    但是 没有 特别 大 的 原则上 的 问题
    
    但是 我 觉得 她 可以 先 让 马云 把 话 说完
    
    把 这句 话 说完 再 去 打断 他 比较 好
    
    而 不是 直接 说 ， 等等等等 ， 等 一下 等 一下 ， 你 那句话 说错 了
    
    这样的话 就 有 一点 没有 礼貌 我 觉得
    
    第三点 ， 我们 来看 一下 这个 女 主持人 的 英语 实力 有没有 那么 厉害 呢
    
    厉害 到 完全 不顾 马云 的 面子
    
    ok， 大家 其实 看到 了 她 的 发音 其实 说 的 是 shud 不同于 wud
    
    她 这 两个 发音 其实 都 发错 了
    
    它 不是 shud 也 不是 wud， 它 是 should 和 would
    
    然后 这点 上 马云 比 她 强 多 了 ， 我们 马上 来看 一下
    
    大家 都 看到 了 其实 马云 的 should 和 would 发 的 很 标准 ， 比 主持人 好 很多很多
    
    第四点 我 想 说 的 是 主持人 的 语气 里 其实 有 一点点 看不起 马云 的 英语 的 感觉
    
    就是 ， 老姐 今天 要 教训 你 ， 今天 要教 你 一堂 英语课 的 感觉
    
    所以 呢 ， 我 觉得 主持人 如果 真的 要 打断 的话
    
    她 可以 礼貌 一点 ， 会 好 很多
    
    我 平时 呢 也 很少 去 评价 别人 的 英语 好不好
    
    我 一般 都 是 鼓励 别人 很少 去 评判 别人
    
    但是 呢 这个 主持人 这次 做 得 有 一点点 过分
    
    所以 我 稍微 提了 一下 我 自己 的 意见
    
    如果 有 一些 冒犯 希望 大家 不要 介意
    
    那 今天 节目 就 到此为止 ， 我们 下次 再见 吧 ！""")




