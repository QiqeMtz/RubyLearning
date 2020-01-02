# uso de Faker

require 'faker'
puts 'Back to the future:'
10.times { puts Faker::Movies::BackToTheFuture.quote }
puts '------------------------------------------------'
puts 'GOT'
15.times { puts Faker::TvShows::GameOfThrones.quote }
puts '------------------------------------------------'