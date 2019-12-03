# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

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

Podcast.create(educator_profile_id: 1, podcast_title: "The History Cache Podcast", date: "Aug 30th 2019", podcast_photo: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9wYmNkbjEucG9kYmVhbi5jb20vaW1nbG9nby9pbWFnZS1sb2dvLzU4NzEwODYvQXBwbGVTdGFuZGFyZExvZ28ucG5n/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D", episode_no: "1", episode_name: "Introduction", actual_length: "7m 17s", url: "https://mcdn.podbean.com/mf/web/u2jm3y/FInal_Intro_.mp3", category: "History", age_group: "Teens, Young Adults, Adults", duration: "Short", description: "And so it begins.")

Podcast.create(educator_profile_id: 1, podcast_title: "The History Cache Podcast", date: "Aug 30th 2019", podcast_photo: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9wYmNkbjEucG9kYmVhbi5jb20vaW1nbG9nby9pbWFnZS1sb2dvLzU4NzEwODYvQXBwbGVTdGFuZGFyZExvZ28ucG5n/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D", episode_no: "2", episode_name: "The Shuar of the Amazon and How to Make a Shrunken Head: Part 1", actual_length: "48m 26s", url: "https://mcdn.podbean.com/mf/web/chddmf/ShuarPart1FINAL.mp3", category: "History", age_group: "Teens, Young Adults, Adults", duration: "Long", description: "Hidden in the deepest interior of the Amazon lived the fierce, mysterious, and fascinating Shuar. This unconquerable tribe resisted conquest from both the Incan and Spanish empires, and was the only tribe in history to successfully revolt against the Spanish empire--and win. Come meet them in Part 1; hear their story and find out just what made them so epically unstoppable.")

Podcast.create(educator_profile_id: 1, podcast_title: "The History Cache Podcast", date: "Sep 11th 2019", podcast_photo: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9wYmNkbjEucG9kYmVhbi5jb20vaW1nbG9nby9pbWFnZS1sb2dvLzU4NzEwODYvQXBwbGVTdGFuZGFyZExvZ28ucG5n/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D", episode_no: "3", episode_name: "History Byte: Rocket Man Was a Monkey: Animal Astronauts of the Final Frontier", actual_length: "27m 2s", url: "https://mcdn.podbean.com/mf/web/smb46e/HB2_Animal_Astronauts_Final.mp3", category: "History", age_group: "Young Adults", duration: "Long", description: "Come and meet Ham the astronaut chimp and discover how the animal astronauts of history just may have saved us all. Also featuring Space Dogs and one phenomenal Astro Cat for an episode that's literally out of this world.")

Podcast.create(educator_profile_id: 1, podcast_title: "The History Cache Podcast", date: "Oct 16th 2019", podcast_photo: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9wYmNkbjEucG9kYmVhbi5jb20vaW1nbG9nby9pbWFnZS1sb2dvLzU4NzEwODYvQXBwbGVTdGFuZGFyZExvZ28ucG5n/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D", episode_no: "4", episode_name: "History Byte: The First Monsters", actual_length: "27m 2s", url: "https://mcdn.podbean.com/mf/web/n8xmux/The_First_Monsters_Final.mp3", category: "History", age_group: "Young Adults", duration: "Long", description: "Come and meet Ham the astronaut chimp and discover how the animal astronauts of history just may have saved us all. Also featuring Space Dogs and one phenomenal Astro Cat for an episode that's literally out of this world.")

EducatorProfile.create(name: "Rohith Amruthur", description: "Ever since he was a child, Rohith was always fascinated by geography and learning about other cultures. He would sit for hours and read maps and atlases, and even draw his own. While he looked at and read these maps, he became naturally curious as to what life was like around the world. His passion for geography as a child left him quite gifted with the subject and he consistently participated in the National Geographic Bee contest in elementary and middle schools. He was able to travel to many different places around the world including plenty of states within the USA, India, Malaysia, Singapore, Germany, the Netherlands, the Bahamas, Canada, Austria, Spain, and Poland.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzA5YzVhYzljZWVhZjVlNjRjMzg5OWY4OWZjODE5NmQxLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

Podcast.create(educator_profile_id: 2, podcast_title: "The Lost Geographer Podcast", date: "May 24th 2016", podcast_photo: "https://cachedimages.podchaser.com/x200/aHR0cDovL3N0YXRpYy5saWJzeW4uY29tL3AvYXNzZXRzLzAvNi82L2UvMDY2ZTY3NjI2OGY3YTQwYS9Qb2RjYXN0LnBuZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D", episode_no: "1", episode_name: "Episode 1 - Introduction to The Lost Geographer Podcast", actual_length: "27m 2s", url: "http://traffic.libsyn.com/thelostgeographer/Ep_1_final.mp3", category: "Geography", age_group: "Young Adults, Teens", duration: "Medium", description: "This is the first episode of The Lost Geographer Podcast. Here, you will understand the goal of the podcast and what you can expect from future episodes. In this modern world, it is important to be geographically and culturally literate, and to understand the way human interact so that we can make the world a better place, one interaction at a time.")

EducatorProfile.create(name: "Alex Goldman", description: "Alex Goldman is co-host of Reply All. His work has appeared on On the Media, 99% Invisible, Slate, and elsewhere.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzU4NmYxZDA1MDgwYTMwOWU5NGM5OWQ5ZDc5OWJjNGQzLnBuZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

Podcast.create(educator_profile_id: 3, podcast_title: "Reply All", date: "November 14th 2019", podcast_photo: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9tZWdhcGhvbmUtcHJvZC5zMy5hbWF6b25hd3MuY29tL3BvZGNhc3RzLzA1ZjcxNzQ2LWE4MjUtMTFlNS1hZWI1LWE3YTU3MmRmNTc1ZS9pbWFnZS91cGxvYWRzXzJGMTU2OTkwMTc5OTQ1NS1pd3poY3l0dWx0LTIzZTQyNTkxNDYwN2IzNDJhN2I4YWFhZWZlYmY4MDA1XzJGUmVwbHlBbGxfMDkzMDE5LmpwZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D", episode_no: "151", episode_name: "Thank You for Noticing", actual_length: "50m 10s", url: "https://dcs.megaphone.fm/GLT5362914806.mp3", category: "Technology, Fantasy", age_group: "Young Adults, Teens", duration: "Long", description: "A listener finds a UFO floating in the sky over a leather store, and Alex sets out to find the man who put it there.")

EducatorProfile.create(name: "Peter Attia", description: "Dr. Peter Attia, a Stanford/Johns Hopkins/NIH-trained physician focusing on the applied science of longevity, the extension of human life and well-being.", photo_url: "https://peterattiamd.com/wp-content/uploads/2019/10/Peter-Attia-C57A2508.jpg")

Podcast.create(educator_profile_id: 4, podcast_title: "The Peter Attia Drive", date: "November 25th 2019", podcast_photo: "https://cachedimages.podchaser.com/x200/aHR0cDovL3N0YXRpYy5saWJzeW4uY29tL3AvYXNzZXRzL2IvNy84L2YvYjc4ZmM1MDgyNmNhNDQ3Yy9FUC44MV8tX1N0ZXZlX0dvbGRuZXJfYW5kX0RlYnJhX0tpbWxlc3NfRklOQUwucG5n/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D", episode_no: "151", episode_name: "#81 - Debra Kimless, M.D. & Steve Goldner, J.D.: Cannabis – the latest science on CBD & THC", actual_length: "2h 11min", url: "http://hwcdn.libsyn.com/p/d/3/a/d3a34a86d6b39f07/EP.81_-_Steve_Goldner_and_Debra_Kimless_FINAL.mp3?c_id=58260380&cs_id=58260380&destination_id=713489&expiration=1575275657&hwt=413be044f175f6310f646a966777170f", category: "Medical Science, Health", age_group: "Young Adults, Adults", duration: "Long", description: "In this episode, Dr. Debra Kimless and Steve Goldner share their knowledge on the science, policy, and market evolution of medicinal cannabis. We start with the differences between THC and CBD, how they work in the body, and how they act on the brain. We discuss the many potential benefits of using CBD, THC, hemp in the various forms of administration (smoking, vaping, edibles, oils, etc.) as well as some of the safety issues including the recent uptick in incidents of hospitalization and death linked to vaping. Debra and Steve are both involved with the company, Pure Green—Debra the Chief Medical Officer and Steve the founder and CEO—whose aim is to create the safest, most efficacious form of delivery of cannabis. Their bigger mission is to shift the perception of the cannabis plant, garner acceptance of its medicinal benefits, and ultimately get it descheduled on a federal level so more people can access cannabis for a range of chronic ailments.")

EducatorProfile.create(name: "Scott Detrow", description: "Scott Detrow is a congressional correspondent for NPR. He also co-hosts the NPR Politics Podcast.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tL2E3MmVhYWJiNmIzMmViNmJlODdlNGM4NTFlYTkwZDFkLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Nick Loper", description: "Nick Loper is an entrepreneur, marketer, skier, author, business nerd, seattle sports fan, parrothead, podcaster and host of The Side Hustle Show.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzY2MzE0Y2Y5ZmQyNGI0NjhkY2U5MWFjMTBhNDM4OWYzLnBuZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Sam Harris", description: "Sam Harris is an American author, philosopher, neuroscientist, critic of religion, blogger, public intellectual, and podcast host.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzk1MzAxZjEzYjYxNmQzYmNkOTYzZDIzNjFlN2RkNTYwLnBuZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Kelton Reid", description: "Podcast Producer, Writer", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzY4MTRhMzI5NWJmMzE3ZDdlMDg0ZjY0MTNmM2RlMzViLnBuZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Roman Mars", description: "Roman Mars is an American radio producer. He is the host and producer of 99% Invisible and a founder of the podcast collective Radiotopia.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tLzVkZjBmYTM0ODdiNzUwNDE4YjM0ZmJmODI3NzY2ZjczLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Elizabeth Gilbert", description: "Elizabeth M. Gilbert is an American author, essayist, short story writer, biographer, novelist, and memoirist. She is the host of the Good Life Project podcast.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tL2FmYTQ5OWQyYWZjZTZkZjcyMjFiZmEwMTk5YTg1ZGZiLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")

EducatorProfile.create(name: "Guy Raz", description: "Guy Raz is a radio broadcaster and the host and editorial director of three NPR programs including two of its most popular ones: TED Radio Hour and How I Built This.", photo_url: "https://cachedimages.podchaser.com/300x300/aHR0cHM6Ly9jcmVhdG9yLWltYWdlcy5wb2RjaGFzZXIuY29tL2EyYjc4MGQxNGU0ODhhMTdjZjhiZTQyYWU3MjZmNWUzLmpwZWc%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D")
