class ProductosController < ApplicationController
    def listar
        session[:id_room] = SecureRandom.hex(4)
        100.times do |c|
            CargarPokemonJob.perform_later(session[:id_room], c)
        end
    end
end
