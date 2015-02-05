require_relative "environment.rb"

planets = %w{mercury venus earth mars jupiter saturn uranus neptune}

planets.each do |p|
  BookTitleWriter.write_titles_about(p, "spec/fixtures/planets/#{p}.txt")
end