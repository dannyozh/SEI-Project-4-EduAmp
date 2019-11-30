# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Podcast.create(educator_profiles_id: 1, name: "The Joe Rogan Show", category: "Comedy", actual_length: "22 mins", duration: "long", url: "http://hwcdn.libsyn.com/p/f/3/c/f3c1b3fcd8e3892c/mmashow083.mp3?c_id=58467212&cs_id=58467212&destination_id=19997&expiration=1574952705&hwt=9f332de3059fbda69b7e3bc8d2613edb", description: "great show man")

# Duration.create(length: "Short")
# Duration.create(length: "Medium")
# Duration.create(length: "Long")

# AgeGroup.create(age_category: "Kids")
# AgeGroup.create(age_category: "Teens")
# AgeGroup.create(age_category: "Young Adults")
# AgeGroup.create(age_category: "Adults")

# Category.create(genre: "History")
# Category.create(genre: "Geography")
# Category.create(genre: "Technology")
# Category.create(genre: "Medical Science")
# Category.create(genre: "Politics")
# Category.create(genre: "Business")
# Category.create(genre: "Ethics")
# Category.create(genre: "Creative Writing")
# Category.create(genre: "Psychology")
# Category.create(genre: "Self-Help")
# Category.create(genre: "Curiosity")

EducatorProfile.create(name: "Kristin Robijn Terpstra", description: "Host of The History Cache podcast.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzk3ZDhjZWE4MDVkNjA4ODk4MWVjMWI2M2VlMGEzNjAxLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Rohith Amruthur", description: "Ever since he was a child, Rohith was always fascinated by geography and learning about other cultures. He would sit for hours and read maps and atlases, and even draw his own. While he looked at and read these maps, he became naturally curious as to what life was like around the world. His passion for geography as a child left him quite gifted with the subject and he consistently participated in the National Geographic Bee contest in elementary and middle schools. He was able to travel to many different places around the world including plenty of states within the USA, India, Malaysia, Singapore, Germany, the Netherlands, the Bahamas, Canada, Austria, Spain, and Poland.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzA5YzVhYzljZWVhZjVlNjRjMzg5OWY4OWZjODE5NmQxLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Alex Goldman", description: "Alex Goldman is co-host of Reply All. His work has appeared on On the Media, 99% Invisible, Slate, and elsewhere.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzU4NmYxZDA1MDgwYTMwOWU5NGM5OWQ5ZDc5OWJjNGQzLnBuZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Peter Attia", description: "Dr. Peter Attia, a Stanford/Johns Hopkins/NIH-trained physician focusing on the applied science of longevity, the extension of human life and well-being.", photo_url: "https://peterattiamd.com/wp-content/uploads/2019/10/Peter-Attia-C57A2508.jpg")

EducatorProfile.create(name: "Scott Detrow", description: "Scott Detrow is a congressional correspondent for NPR. He also co-hosts the NPR Politics Podcast.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tL2E3MmVhYWJiNmIzMmViNmJlODdlNGM4NTFlYTkwZDFkLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Nick Loper", description: "Nick Loper is an entrepreneur, marketer, skier, author, business nerd, seattle sports fan, parrothead, podcaster and host of The Side Hustle Show.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzY2MzE0Y2Y5ZmQyNGI0NjhkY2U5MWFjMTBhNDM4OWYzLnBuZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Sam Harris", description: "Sam Harris is an American author, philosopher, neuroscientist, critic of religion, blogger, public intellectual, and podcast host.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzk1MzAxZjEzYjYxNmQzYmNkOTYzZDIzNjFlN2RkNTYwLnBuZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Kelton Reid", description: "Podcast Producer, Writer", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzY4MTRhMzI5NWJmMzE3ZDdlMDg0ZjY0MTNmM2RlMzViLnBuZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Roman Mars", description: "Roman Mars is an American radio producer. He is the host and producer of 99% Invisible and a founder of the podcast collective Radiotopia.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzVkZjBmYTM0ODdiNzUwNDE4YjM0ZmJmODI3NzY2ZjczLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Elizabeth Gilbert", description: "Elizabeth M. Gilbert is an American author, essayist, short story writer, biographer, novelist, and memoirist. She is the host of the Good Life Project podcast.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tL2FmYTQ5OWQyYWZjZTZkZjcyMjFiZmEwMTk5YTg1ZGZiLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Guy Raz", description: "Guy Raz is a radio broadcaster and the host and editorial director of three NPR programs including two of its most popular ones: TED Radio Hour and How I Built This.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tL2EyYjc4MGQxNGU0ODhhMTdjZjhiZTQyYWU3MjZmNWUzLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")
