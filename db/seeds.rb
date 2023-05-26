# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

puts "Creating movies..."

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

Movie.create(title: "Aftersun", overview: "Twenty years after their last holiday at a fading vacation resort, Sophie reflects on the rare time spent with her loving and idealistic father Calum.", poster_url: "https://cdn.cinematerial.com/p/297x/d7vpdy6d/aftersun-movie-poster-md.jpg?v=1664314289", rating: 8.1)
Movie.create(title: "La Haine", overview: "When a young Arab is arrested and beaten unconscious by police, a riot erupts in the notoriously violent suburbs outside of Paris.", poster_url: "https://cdn.cinematerial.com/p/297x/g9ifmlnk/la-haine-french-movie-poster-md.jpg?v=1456627029", rating: 6.9)
Movie.create(title: "Atonement", overview: "This sweeping English drama, based on the book by Ian McEwan, follows the lives of young lovers Cecilia Tallis (Keira Knightley) and Robbie Turner (James McAvoy).", poster_url: "https://cdn.cinematerial.com/p/136x/nozd0blv/atonement-movie-poster-sm.jpg?v=1456029505", rating: 7.9)
Movie.create(title: "In The Mood for Love", overview: "In 1962, journalist Chow Mo-wan (Tony Leung Chiu Wai) and his wife move into a Hong Kong apartment, but Chow's spouse is often away on business.", poster_url: "https://posterspy.com/wp-content/uploads/2021/03/In-the-Mood-for-Love-poster-for-website.jpg", rating: 8.0)
Movie.create(title: "Another Round", overview: "Four high school teachers consume alcohol on a daily basis to see how it affects their social and professional lives.", poster_url: "https://m.media-amazon.com/images/M/MV5BOTNjM2Y2ZjgtMDc5NS00MDQ1LTgyNGYtYzYwMTAyNWQwYTMyXkEyXkFqcGdeQXVyMjE4NzUxNDA@._V1_.jpg", rating: 8.4)
Movie.create(title: "American Beauty", overview: "A telesales operative becomes disillusioned with his existence and begins to hunger for fresh excitement in his life.", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 8.2)
