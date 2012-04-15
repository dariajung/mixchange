namespace :movies do
	desc "Takes in the user ratings of 10 movies and outputs the top three movies"

	task :give_top_three do
		puts "starting to read in the CSV file"
		require 'csv'

		movies = {}

		CSV.foreach("#{Rails.root}/data/movie.csv") do |row|
			#puts "NEW ROW: #{row}"
			for pair in row
				title = pair.split(":")[1]
				score = pair.split(":")[0].to_i
				if movies.has_key?(title) 
					movies[title] += score
				else
				movies[title] = score
			end
		end
	end
		#puts movies
		puts "and the top three movies are..."
		#movies.sort{|a,b| a[1]<=>b[1]}.each { |elem|
		#	puts "#{elem[1]}, #{elem[0]}"
		#}
		order = movies.sort{|a,b| a[1]<=>b[1]}
		#puts order

		order[0..2].each do |elem|
			puts  "#{elem[0]}"
		end

	end
end