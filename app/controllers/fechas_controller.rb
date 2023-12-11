class FechasController < ApplicationController

    def listar

    end

    def mostrar

    end


    def automatico
        
    end

    # POST
    def automatico_crear
     puts params.inspect
    end

    # POST
    def agregar_comp
        cookies[:fechas] = 0 unless cookies[:fechas]
        @fechas = cookies[:fechas].to_i
        @fechas += 1
        cookies[:fechas] = @fechas
        turbo_stream
    end

    # DELETE
    def quitar_comp
        cookies[:fechas] = 1 unless cookies[:fechas]
        @fechas = cookies[:fechas].to_i
        @fechas -= 1 if @fechas - 1 > 0
        cookies[:fechas] = @fechas
        turbo_stream
    end

end
