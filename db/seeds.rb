# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Podcast.create(educator_profiles_id: 1, name: "The Joe Rogan Show", category: "Comedy", actual_length: "22 mins", duration: "long", url: "http://hwcdn.libsyn.com/p/f/3/c/f3c1b3fcd8e3892c/mmashow083.mp3?c_id=58467212&cs_id=58467212&destination_id=19997&expiration=1574952705&hwt=9f332de3059fbda69b7e3bc8d2613edb", description: "great show man")

Duration.create(length: "Short")
Duration.create(length: "Medium")
Duration.create(length: "Long")

AgeGroup.create(age_category: "Kids")
AgeGroup.create(age_category: "Teens")
AgeGroup.create(age_category: "Young Adults")
AgeGroup.create(age_category: "Adults")

Category.create(genre: "History")
Category.create(genre: "Geography")
Category.create(genre: "Technology")
Category.create(genre: "Medical Science")
Category.create(genre: "Politics")
Category.create(genre: "Business")
Category.create(genre: "Ethics")
Category.create(genre: "Creative Writing")
Category.create(genre: "Philosophy")
Category.create(genre: "Psychology")
Category.create(genre: "Just For Fun")
Category.create(genre: "Curiosity-Beckons")
