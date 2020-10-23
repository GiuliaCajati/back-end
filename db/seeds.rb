# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
UserGift.destroy_all
Relationship.destroy_all
Character.destroy_all
Interest.destroy_all 
Gift.destroy_all
User.destroy_all 

######## Interests ########

#ideas
#list of pickup lines
#quotes from euphoria
#other bg2 char quotes
#comb through harvest moon for any ideas
#taylor swift lyrics
#sus among us memes
#chad: bro, frat, swole, mirin, dtf, brotein shake, crack open a cold one with the boys, chill, slide into DMs, tactless formulaic pickup lines
#cpt. sparrow: jack sparrow quotes/swagger

pop_culture = Interest.create(
    name: "Pop Culture",
    favorite_gift: "Autographed photo of Justin Bieber",
    questions: JSON.unparse([
        [
            "WAP is so fetch()!",
            "Britney, stop trying to make fetch() happen.",
            ".then let's see Cardi B when covid is over",
            "Haven't heard of it.",
            "ans4",
            -1,1,0,0,
            -100,
            0000
        ],
        [
            "120 calories and 48 calories from fat. What percent is that?",
            "Um..48 into 120?",
            "It's 40%. Well, 48 over 120 equals x over a 100 and then you cross multiply and get the value of x.",
            "Whatever, let's get cheese fries.",
            "ans4",
            0,-1,1,0,
            -100,
            0001
        ],
        [
            "You're wearing sweatpants... It's Monday.",
            "So?",
            "Whatever. Those rules aren't real.",
            "Boo, you whore.",
            "ans4",
            -1,0,1,0,
            -100,
            0002
        ],
        [
            "I'm kind of psychic. I have a fifth sense.",
            "It's like you have ESPN or something.",
            "Do you wanna do something fun? Do you wanna go to Taco Bell?",
            "I'm sorry I laughed at you that time you got diarrhea at Barnes & Noble.",
            "I can't talk right now. I'm sick.",
            1,0,-1,0,
            1,
            0003
        ],
        [
            "I know Esmeralda's kind of socially retarded and weird, but she's my friend… so, just promise me you won't make fun of her.",
            "She's, like, really pretty.",
            "I love her. She's like a Martian!",
            "I like her wig. What's it made of?",
            "I can't talk right now. I'm sick.",
            -1,1,0,0,
            7,
            0004
        ],
        [
            "Why do you wear your hair like that? Your hair looks so sexy pushed back.",
            "I like it this way.",
            "I always used to push it back but then in 11th grade...",
            "Thanks babe.",
            "I can't talk right now. I'm sick.",
            0,-1,1,0,
            15,
            0005
        ],
        [
            "Get in loser, we're going shopping.",
            "I'll get my credit card...",
            "Good because that is the ugliest effing skirt I've ever seen.",
            "You're plastic. Cold, shiny, hard, plastic.",
            "I can't talk right now. I'm sick.",
            0,1,-1,0,
            3,
            0006
        ],
        [
            "Victoria may seem like your typical selfish, back-stabbing slut faced ho-bag, but in reality, she's so much more than that.",
            "She's a homeschooled freak who's a less hot version of you.",
            "She's totally rich because her dad invented Toaster Streudels.",
            "I have this theory that if you cut off all her hair, she'd look like a British man.",
            "I can't talk right now. I'm sick.",
            0,-1,1,0,
            1,
            0007
        ],
        [
            "You're like, really hot... So you agree? You think you're really hot?",
            "Yes",
            "No",
            "Yes... no... what?",
            "I can't talk right now. I'm sick.",
            0,0,0,0,
            7,
            0010
        ],
        [
            "Like, why are you so obsessed with me?",
            "Because you're hot.",
            "Everything I know about you only makes me want to learn, see and do more.",
            "Bitch bye.",
            "I can't talk right now. I'm sick.",
            1,0,-20,0,
            7,
            0011
        ],
        [
            "That vest is disgusting.",
            "Y-you too.",
            "My mom gave it to me.",
            "Britney, you're hard to talk to.",
            "I can't talk right now. I'm sick.",
            -1,-1,-1,0,
            -100,
            0012
        ],
    ])
)

rum = Interest.create(
    name: "Rum",
    favorite_gift: "Antique Spanish coin",
    questions: JSON.unparse([
        [
            "Avast ye landlubber!",
            "'Tis a beautiful day for sailin'",
            "Drink up me hearties! Yo ho!",
            "I was a pirate for Halloween once too.",
            "Sorry, I have to go.",
            1,0,-1,0,
            0,
            1000
        ],
        [
            "The rougher the seas, the smoother we sail. Ahoy!",
            "Batten down the hatches!",
            "I'd probably get seasick xD",
            "Beware the kraken!",
            "I need to finish my laundry. Gotta go!",
            0,-1,1,0,
            1,
            1001
        ],
        [
            "I just dropped me phone off the bridge... At least it was in an otterbox...",
            "Let's go a-plunderin' and loot you a new one.",
            "Alas, 'tis down with Davy Jones' Locker now...",
            "Don't walk the plank after it... the water here is gross.",
            "I have to go... it's too cold outside...",
            0,1,-1,0,
            1,
            1002
        ],
    ])
)

zodiac = Interest.create(
    name: "Zodiac",
    favorite_gift: "Pearl and amethyst pendant",
    questions: JSON.unparse([
        [
            "What's your sign?",
            "Gemini",
            "Sagittarius",
            "Aquarius",
            "Sorry, I'm late for work.",
            -1,0,1,0,
            -100,
            2000
        ],
        [
            "Guess how many dogs I have!",
            "2",
            "12",
            "Trick question! You seem like a cat person.",
            "That reminds me! I have to go feed my dog!",
            0,1,-1,0,
            1,
            2001
        ],
        [
            "Do you know the first sign in the zodiac?",
            "Aries",
            "Virgo",
            "Mercury",
            "Sorry, I haven't got time.",
            1,0,-1,0,
            -100,
            2002
        ],
        [
            "Captain Pirateface over there drinks like a fish...",
            "He's gotta be an Aquarius.",
            "He's probably a Taurus.",
            "He's a Pisces, I can just tell.",
            "Sorry, I haven't got time.",
            0,-1,1,0,
            -100,
            2003
        ],
        [
            "Britney always changes her plans at the last minute!",
            "She's totally a Libra.",
            "Classic Scorpio.",
            "Such a Sagittarius.",
            "Sorry, I haven't got time.",
            1,-1,0,0,
            1,
            2004
        ],
        [
            "Sometimes I feel like I don't even know who I am.",
            "I know who you are. You're a Gemini.",
            "You're my Capricorn.",
            "Esmeralda you're an Aquarius.",
            "Sorry, I haven't got time.",
            1,-1,-1,0,
            15,
            2005
        ],
        [
            "I think Veronica's a Cancer...",
            "Yeah I don't like her either.",
            "Yeah she can be stubborn.",
            "Yeah she seems really sensitive.",
            "Sorry, I haven't got time.",
            -1,-1,1,0,
            -100,
            2006
        ],
        [
            "Who'd call himself 'Spiky?' Kind of a dick.",
            "Probably an Aries.",
            "Only a Scorpio.",
            "A Gemini.",
            "Sorry, I haven't got time.",
            0,1,-1,0,
            3,
            2007
        ],
        [
            "Victoria scares me.",
            "Capricorns are ruthless.",
            "Libras are ruthless.",
            "She's no Virgo, that's for sure.",
            "Sorry, I haven't got time.",
            1,-1,1,0,
            3,
            2008
        ],
        [
            "Tanner is so nice. I wonder what his sign is...",
            "He's a Leo. Real sensitive.",
            "He's a Sagittarius. Never finishes what he starts.",
            "He's an Aries. So impulsive.",
            "Sorry, I haven't got time.",
            -1,1,0,0,
            7,
            2009
        ],
        [
            "Chad's a big showoff.",
            "Huge Pisces.",
            "Dude's a Leo.",
            "Seems like a Taurus to me.",
            "Sorry, I haven't got time.",
            -1,1,0,0,
            -100,
            2010
        ],
    ])
)

indie = Interest.create(
    name: "Indie",
    favorite_gift: "Vinyl record player",
    questions: JSON.unparse([
        [
            "I've been listening to this obscure band... you've probably never heard of them...",
            "Modest Mouse?",
            "Dave Matthews Band?",
            "Neutral Milk Hotel?",
            "Hey sorry, I gotta go!",
            0,-1,1,0,
            -100,
            3000
        ],
        [
            "Are the beans here local?",
            "Fair trade sun-grown organic local beans!",
            "Fair trade shade-grown organic local beans!",
            "I don't think coffee can grow at this latitude.",
            "ans4",
            -1,1,0,0,
            -100,
            3001
        ],
        [
            "I think I'm gonna take in the neighborhood stray cat. What should I name him?",
            "Brad",
            "Jasper",
            "Noam Chomsky",
            "I think my fire alarm went off, gotta run!",
            -1,0,1,0,
            3,
            3002
        ],
        [
            "So what do you wanna eat?",
            "Ham sandwich.",
            "Avocado toast.",
            "Kale salad with prosciutto and figs.",
            "Oh no I left the oven on, got to go!",
            -1,1,0,0,
            -100,
            3003
        ],
        [
            "Trader Joe's is the best worst thing I've discovered in my 24 years of living.",
            "Have you tried the butternut squash soup?",
            "The aisles are too small.",
            "I prefer Wegman's.",
            "That reminds me, I have to get some groceries. Bye!",
            1,0,-1,0,
            -100,
            3004
        ],
        [
            "What do you think of girls who wear high-waisted jeans?",
            "It's a cute look.",
            "You mean mom jeans?",
            "I liked that style before it was cool.",
            "Gotta go to Urban, bye!",
            0,-1,1,0,
            7,
            3005
        ],
        [
            "I'd like a tall soy-free soy dirty chai.",
            "I'll have the same.",
            "I'll have an iced matcha green tea latte with almond milk. Skim almond milk.",
            "I'll have a pumpkin spice latte.",
            "ans4",
            0,1,-1,0,
            -100,
            3006
        ],
        [
            "You'd look so good with a mustache.",
            "Movember is coming up...",
            "Like Freddie Mercury?",
            "I'm sorry I can't grow a mustache for you Veronica.",
            "ans4",
            1,-1,0,0,
            10,
            3007
        ],
        [
            "Remember how Game of Thrones ended? Omg.",
            "Yas queen slayyy.",
            "Jon Snow was the rightful king though fr.",
            "Game of Thrones? I only like their old stuff.",
            "ans4",
            0,-1,1,0,
            1,
            3008
        ],
        [
            "I once dumped a guy because his mustache sucked.",
            "Ya ok Veronica.",
            "So... should I not grow a mustache then?",
            "Sorry for your loss.",
            "ans4",
            0,0,0,0,
            15,
            3009
        ],
    ])
)
rock_and_roll = Interest.create(
    name: "Rock & Roll",
    favorite_gift: "Gibson guitar",
    questions: JSON.unparse([
        [
            "Rock on dude!",
            "Has anyone told you you look like Bruce Springsteen?",
            "Yeah!",
            "I'm more into counrty.",
            "I'm gonna go now, bye.",
            1,0,-1,0,
            0,
            4000
        ],
        [
            "I'm not God but if I were God, ¾ of you would be girls, and the rest would be pizza and beer.",
            "Yo dude same!",
            "I love that",
            "That's so not PC",
            "I have to go....",
            1,0,-1,0,
            1,
            4001
        ]
    ])
)
luxury = Interest.create(
    name: "Luxury",
    favorite_gift: "Ferrari",
    questions: JSON.unparse([
        [
            "I have been watching you for a time. You have a pleasing look about you... the sort of musculature that could make a woman swoon with desire.",
            "Well I hope I'm maming you swoon",
            "You are very direct, I love that.",
            "Begone, thot.",
            "I feel u",
            1,0,-1,0,
            -100,
            5000
        ],
        [
            " ",
            "ans1",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            1,
            5001
        ],
        [
            "And what do you think of Victoria, hmm? Does her sharp beauty give you singular twinges of desire?",
            "ans1",
            "ans2",
            "Victoria, I've no time for your nonsense today.",
            "ans4",
            1,0,-1,0,
            0,
            5000
        ],
        [
            "I have noticed the type of man that you are. Intense, determined, strong... all the qualities I have grown to like most exist in you.",
            "ans1",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            7,
            5000
        ],
        [
            "I have toyed with your feelings unfairly, placing you down with others I have known... and you have not been like them. It was... wrong of me.",
            "I am sick of you running hot and cold all the time. Just leave me alone and I'll be happy!",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            15,
            5000
        ],
        [
            "Oh do not look at me in such a manner. Does your manhood wilt from thought of using knowledge of the erotic to survive in this world? Is it so terrible?",
            "ans1",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            -100,
            5000
        ],
        [
            "Tell me... has there been anyone special to you? A thief of your heart?",
            "Never",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            -100,
            5000
        ],
        [
            "Your heart is heavy with lust and burning desire... but shall it be mine or another's?",
            "There is only you, Victoria.",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            3,
            5000
        ],
        [
            "Do you ever entertain the notion of marriage? To commit to one person in all matters? It seems a bizarre internment to me.",
            "I myself hope to settle into a home that doesn't change by the day.",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            7,
            5000
        ],
        [
            "question1",
            "ans1",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            0,
            5000
        ],
    ])
)
liberal_arts = Interest.create(
    name: "Liberal Arts",
    favorite_gift: "Shakespeare's First Folio",
    questions: JSON.unparse([
        [
            "Want to join me for a visit to the MET today? They just opened the exhibit on “Goya’s Graphic Imagination”.",
            "What is Goya?",
            "Would love to, his distaste for intellectual oppression is renowned.",
            "I would rather play Civ ",
            "Gotta run!",
            -1,1,-1,0,
            0,
            6000
        ],
        [
            "Just finished the third edition of The Odyssey. The greek mythology, and fascinating themes are mind quenching.",
            "Is that the one where Romeo kills Juliet?",
            "Ulysses is an exemplary model of heroism",
            "Have you read “Twilight”?",
            "Just got a phone call, got to go!",
            -1,1,-1,0,
            1,
            6001
        ],
        [
            "What is your favorite Shakespere tragedy?",
            "I found King Lear riveting.",
            "Paradise lost is for sure my favorite",
            "Poetry isn’t my thing",
            "Gotta go read a book!",
            1,-1,-1,0,
            1,
            6002
        ],
        [
            "Have you finished reading that book I lent you, yet?",
            "Dude, I don’t know you",
            "Yes, Malcolm Gladwell is a fantastic author!",
            "No, I had to finish season five of The Office.",
            "No I’m going to do that now, bye.",
            -1,1,-1,0,
            1,
            6003
        ],
        [
            "Who's your favorite heroine in Pride and Prejudice?",
            "Definitely Kiera Knightley",
            "Elizabeth Bennet, her playful disposition, and idealism is admirable",
            "Mr. Bennet is pretty cool",
            "Gotta go get some coffee.",
            -1,1,-1,0,
            1,
            6004
        ]
    ])
)
sports = Interest.create(
    name: "Sports",
    favorite_gift: "Autographed Tom Brady jersey",
    questions: JSON.unparse([
        [
            "I lost my phone number. Can I have yours?",
            "ans1",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            0,
            7000
        ],
        [
            "Hey, I just realized this, but you look a lot like my next girlfriend.",
            "Thank you..",
            "I would never go out with you",
            "Well I could be your next one..",
            "Your  girlfriend is calling me, got to go.",
            0,-1,1,0,
            1,
            7001
        ],
        [
            "Swole...Mirin",
            "100%",
            "What?",
            "Ya Swole",
            "Gotta run!",
            1,-1,0,0,
            0,
            7000
        ],
        [
            "Just got a six pack of natty’s. Wanna shotgun?",
            "No, I sat away from guns",
            "Yeah let’s get lit!",
            "I would rather have red wine",
            "ans4",
            0,1,-1,0,
            0,
            7000
        ],
        [
            "DTF",
            "Eww... who are you?",
            "Maybe...what does that mean?",
            "Name the time, and the place",
            "Sorry I have to go meet my husband.",
            1,0,-1,0,
            0,
            7000
        ],
        [
            "Protein shake",
            "ans1",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            0,
            7000
        ],
        [
            "Crack open a cold one with the boys",
            "Yeah, for the boys!",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            0,
            7000
        ],
        [
            "Slide into your DMs",
            "ans1",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            0,
            7000
        ],
        [
            "Netflix and chill",
            "ans1",
            "ans2",
            "ans3",
            "ans4",
            1,0,-1,0,
            0,
            7000
        ],
        [
            "Brah are you in a frat?",
            "Dela Sig for life...dap it bro",
            "Bro, stop acting like a pledge",
            " would never put myself through that social humiliation",
            "Just got a phone call, got to go",
            1,0,-1,0,
            0,
            7000
        ],
    ])
)

######## Characters ########
# Britney
britney = Character.create(
    name: "Britney",
    interest: pop_culture,
    picture_url: "https://i.imgur.com/apEQ3W3.png"
)

# Cpt. Sparrow
sparrow = Character.create(
    name: "Cpt. Sparrow",
    interest: rum,
    picture_url: "https://i.imgur.com/B2jI6HU.png"
)

# Esmeralda
esmerelda = Character.create(
    name: "Esmeralda",
    interest: zodiac,
    picture_url: "https://i.imgur.com/7g62ZxM.png"
)

# Veronica
veronica  = Character.create(
    name: "Veronica",
    interest: indie,
    picture_url: "https://i.imgur.com/FXIo6Vk.png"
 )

 # Spiky
spiky  = Character.create(
    name: "Spiky",
    interest: rock_and_roll,
    picture_url: "https://i.imgur.com/gOmOsqH.png"
 )


 # Victoria
victoria  = Character.create(
    name: "Victoria",
    interest: luxury,
    picture_url: "https://i.imgur.com/rIYZ0FI.png"
 )
 
 # Tanner
tanner  = Character.create(
    name: "Tanner",
    interest: liberal_arts,
    picture_url: "https://i.imgur.com/fz7zJ6O.png"
 )
 
 # Chad
chad  = Character.create(
    name: "Chad",
    interest: sports,
    picture_url: "https://i.imgur.com/ZLK1Yy3.png"
 )
 
 
 ######## Gifts ########

 Gift.create(
    name: "Autographed photo of Justin Bieber",
    price: 10,
    favoriteValue: 5,
    picture_url: "https://i.imgur.com/4tvZOjz.png"
)

Gift.create(
    name: "Antique Spanish coin",
    price: 10,
    favoriteValue: 5,
    picture_url: "https://i.imgur.com/H4OFGBt.png"
)

Gift.create(
    name: "Pearl and amethyst pendant",
    price: 10,
    favoriteValue: 5,
    picture_url: "https://i.imgur.com/oKCwDsc.png"
)

Gift.create(
    name: "Vinyl record player",
    price: 10,
    favoriteValue: 5,
    picture_url: "https://i.imgur.com/03Rqr6A.png"
)

Gift.create(
    name: "Gibson guitar",
    price: 10,
    favoriteValue: 5,
    picture_url: "https://i.imgur.com/KL81Ok5.png"
)

Gift.create(
    name: "Ferrari",
    price: 10,
    favoriteValue: 5,
    picture_url: "https://i.imgur.com/3uslQRG.png"
)

Gift.create(
    name: "Shakespeare's First Folio",
    price: 10,
    favoriteValue: 5,
    picture_url: "https://i.imgur.com/tajWHy8.png"
)


Gift.create(
    name: "Autographed Tom Brady jersey",
    price: 10,
    favoriteValue: 5,
    picture_url: "https://i.imgur.com/gETTbNO.png"
)