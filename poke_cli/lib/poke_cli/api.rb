class API 
   self.get_data
  response = RestClient.get("https://pokeapi.co/api/v2/ability/{id or name}/")
    pokemon_array = JSON.parse(response.body)["results"]
    pokemon_array.each do |pokemon|
      Pokmon.new(pokemon)
    end 
  end
end 