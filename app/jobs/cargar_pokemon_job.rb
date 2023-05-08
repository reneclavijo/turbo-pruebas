class CargarPokemonJob < ApplicationJob
  queue_as :default

  def perform(id_room, contador)
    pokemon = PokeApi.new.elegir_pokemon()
    Turbo::StreamsChannel::broadcast_prepend_to(
      id_room,
      target: "pokemones",
      partial: "componentes/pokemon", 
      locals: {p: pokemon, c: contador}
    )
    puts "📩📩📩📩📩 PASANDO"
  end
end
