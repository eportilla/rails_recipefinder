class Recipe
	include HTTParty

	hostport = ENV["FOOD2FORK_SERVER_AND_PORT"] || "www.food2fork.com"
	key_value = ENV["FOOD2FORK_KEY"]
	base_uri "http://#{hostport}/api"
	default_params key: key_value
	format :json

	def self.for recipe
		begin
			get("/search", query: { q: recipe })["recipes"]
			#recipes is the json element name
		rescue
			@recipes = nil
		end
		
	end

end