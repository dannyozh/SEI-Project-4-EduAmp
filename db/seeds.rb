# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
Category.create(genre: "Psychology")
Category.create(genre: "Self-Help")
Category.create(genre: "Curiosity")

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

Podcast.create(educator_profiles_id: 1, podcast_title: "The History Cache Podcast", date: "Aug 30th 2019", podcast_photo: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9wYmNkbjEucG9kYmVhbi5jb20vaW1nbG9nby9pbWFnZS1sb2dvLzU4NzEwODYvQXBwbGUtMDEucG5n/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D", episode_no: "1", episode_name: "Introduction", actual_length: "7m 17s", url: "https://s116.podbean.com/pb/1d7c5442ac76444f7c12aaa8a3704b9c/5de20f9a/data1/fs188/5871086/uploads/FInal_Intro_.mp3?pbss=ade30707-1bed-5dbd-bf6e-e3d13fb01552", description: "And so it begins.")

Podcast.create(educator_profiles_id: 1, podcast_title: "The History Cache Podcast", date: "Aug 30th 2019", podcast_photo: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9wYmNkbjEucG9kYmVhbi5jb20vaW1nbG9nby9pbWFnZS1sb2dvLzU4NzEwODYvQXBwbGUtMDEucG5n/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D", episode_no: "2", episode_name: "The Shuar of the Amazon and How to Make a Shrunken Head: Part 1", actual_length: "48m 26s", url: "https://s146.podbean.com/pb/b65490254d9971c7ff172b6f9cdbeb1b/5de2104b/data3/fs188/5871086/uploads/ShuarPart1FINAL.mp3?pbss=55e780cf-ad18-5a12-a82a-b0a92912e2de", description: "Hidden in the deepest interior of the Amazon lived the fierce, mysterious, and fascinating Shuar. This unconquerable tribe resisted conquest from both the Incan and Spanish empires, and was the only tribe in history to successfully revolt against the Spanish empire--and win. Come meet them in Part 1; hear their story and find out just what made them so epically unstoppable.")

Podcast.create(educator_profiles_id: 1, podcast_title: "The History Cache Podcast", date: "Aug 30th 2019", podcast_photo: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9wYmNkbjEucG9kYmVhbi5jb20vaW1nbG9nby9pbWFnZS1sb2dvLzU4NzEwODYvQXBwbGUtMDEucG5n/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D", episode_no: "3", episode_name: "History Byte: Rocket Man Was a Monkey: Animal Astronauts of the Final Frontier", actual_length: "27m 2s", url: "https://s145.podbean.com/pb/f413b5347e0c5ef547f80635b2868dc7/5de210b8/data1/fs188/5871086/uploads/HB2_Animal_Astronauts_Final.mp3?pbss=feea484a-2948-5c51-80ef-4a18fe62ba2d", description: "Come and meet Ham the astronaut chimp and discover how the animal astronauts of history just may have saved us all. Also featuring Space Dogs and one phenomenal Astro Cat for an episode that's literally out of this world.")
