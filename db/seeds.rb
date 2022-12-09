# # create random movies data
movies_1 = Movie.create(title: "Black Panther", description: "Marvel Studios' “Black Panther” follows T'Challa who, after the death of his father, the King of Wakanda, returns home to the isolated, technologically advanced African nation to succeed to the throne and take his rightful place as king.", category: "Fantasy", image_url:"https://www.washingtonpost.com/graphics/2019/entertainment/oscar-nominees-movie-poster-design/img/black-panther-web.jpg")
movies_2 = Movie.create(title: "The Assassin", description: "In 8th century China, 10-year-old general's daughter Nie Yinniang is handed over to a nun who initiates her into the martial arts, transforming her into an exceptional assassin charged with eliminating cruel and corrupt local governors.", category: "Action", image_url:"https://assets.mubicdn.net/images/notebook/post_images/19893/images-w1400.jpg?1449196747")
movies_3 = Movie.create(title: "The River Wild", description: "Riverworld is an artificial environment where all humans (and pre-humans) are reconstructed. The books explore interactions of individuals from many different cultures and time periods. Its underlying theme is quasi-religious.", category: "Kids", image_url:"https://upload.wikimedia.org/wikipedia/en/7/7b/River_wild_movie_poster.jpg")
movies_4 = Movie.create(title: "The Hero", description: "Lee Hayden is a Western icon with a golden voice, but his best performances are decades behind him. He spends his days reliving old glories and smoking too much weed with his former co-star-turned-dealer, Jeremy, until a surprise cancer diagnosis brings his priorities into sharp focus.", category: "Drama", image_url:"https://www.mmppicture.co.in/wp-content/uploads/2020/07/The-Hero-Action-Movie-Poster-810x1080.jpg")
movies_5 = Movie.create(title: "The Johnsons", description: "The Johnsons are an attractive, well-to-do, upper-middle class family. Sidney, husband and father, is a famous poet, known and adored for his kindness and sensitivity. Joan, wife and mother, is a dutiful housewife, an obsessive homemaker and the life of every party.", category: "Comedy", image_url:"https://cdn.shopify.com/s/files/1/0548/8404/0870/products/TheFamilyComedy-PersonalizedMoviePoster_b59527ba-7360-415b-98b3-33b4086e7c06_1200x.jpg?v=1617385439")
movies_6 = Movie.create(title: "The Midnight Sky", description: "This post-apocalyptic tale follows Augustine, a lonely scientist in the Arctic, as he races to stop Sully and her fellow astronauts from returning home to a mysterious global catastrophe.", category: "Science Fiction", image_url:"https://themoviespoiler.com/wp-content/uploads/2020/12/midnight_sky_ver2.jpg")
movies_7 = Movie.create(title: "Imperial Dreams", description: "A 21-year-old reformed gangster Bambi's devotion to his family, particularly his son Daytone, and his family's future are put to the test when he is released from prison and returns to his violent old stomping grounds in Watts, Los Angeles.", category: "Drama", image_url:"https://www.indiewire.com/wp-content/uploads/2017/09/imperial-dreams-2014.jpg?w=426")
movies_8 = Movie.create(title: "Rogue one", description: "The plot follows a group of rebels who band together to steal plans of the Death Star, the ultimate weapon of the Galactic Empire. It details the Rebel Alliance's first effective victory against the Empire, first referenced in Star Wars' opening crawl.", category: "Action", image_url:"https://pyxis.nymag.com/v1/imgs/26b/2b7/7fb112e0feb9e3807c605789798f8ce1e5-21-rogue-one.2x.w710.jpg")
movies_9 = Movie.create(title: "Iron Man", description: "He is the Armored Avenger - driven by a heart that is part machine, but all hero! He is the INVINCIBLE IRON MAN! Iron Man's Powers and Abilities: Wears modular arc reactor-powered Iron Man armor, granting superhuman strength & durability, the ability to fly & project Repulsor blasts.", category: "Kids", image_url:"https://media.comicbook.com/2017/10/iron-man-movie-poster-marvel-cinematic-universe-1038878.jpg")
movies_10 = Movie.create(title: "Hary Potter", description: "The story begins when 11-year-old orphan Harry discovers that his parents were wizards and he starts his education in magic at Hogwart's School of Witchcraft and Wizardry. There he makes two close friends, Ron and Hermione, who share his adventures..", category: "Fiction", image_url:"https://i.ebayimg.com/images/g/nHQAAOSwQ8hhoMr~/s-l500.jpg")


# create 4-6 random reviews for each movie
# Uses Faker for fake data https://github.com/faker-ruby/faker
rand(1..3).times do
    Review.create(
      movie_id: movies_1.id,
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5)
    )
  end

  rand(1..3).times do
    Review.create(
      movie_id: movies_2.id,
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5)
    )
  end

  rand(1..3).times do
    Review.create(
      movie_id: movies_3.id,
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5)
    )
  end

  rand(1..3).times do
    Review.create(
      movie_id: movies_4.id,
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5)
    )
  end

  rand(1..3).times do
    Review.create(
      movie_id: movies_5.id,
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5)
    )
  end

  rand(1..3).times do
    Review.create(
      movie_id: movies_6.id,
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5)
    )
  end

  rand(1..3).times do
    Review.create(
      movie_id: movies_7.id,
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5)
    )
  end

  rand(1..3).times do
    Review.create(
      movie_id: movies_8.id,
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5)
    )
  end

  rand(1..3).times do
    Review.create(
      movie_id: movies_9.id,
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5)
    )
  end

  rand(1..3).times do
    Review.create(
      movie_id: movies_10.id,
      username: Faker::Internet.username,
      comment: Faker::Hipster.sentence,
      rating: rand(1..5)
    )
  end

 