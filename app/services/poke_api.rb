class PokeApi

    def elegir_pokemon()
        id_pokemon = rand(1..151)
        poke = JSON.parse(Faraday.get("https://pokeapi.co/api/v2/pokemon/#{id_pokemon}").body)
        {
            nombre: poke["name"],
            sprite: poke["sprites"]["front_default"]
        }
    end
end