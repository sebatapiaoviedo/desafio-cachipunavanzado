def imprimir_menu	
	puts '1) Piedra'
	puts '2) Papel'
	puts '3) Tijera'
	puts '4) Salir'
end
def juego(jugada_1, jugada_2)
    	if(jugada_1 == jugada_2)
            puts("Empate")
        elsif (jugada_1 == "Papel" && jugada_2 == "Piedra")
        	puts("Gana el jugador 1")
        elsif (jugada_1 == "Piedra" && jugada_2 == "Papel")
            puts("Gana el jugador 2")
        elsif (jugada_1 == "Tijera" && jugada_2 == "Piedra")
        	puts("Gana el jugador 2")
        elsif (jugada_1 == "Piedra" && jugada_2 == "Tijera")
            puts("Gana el jugador 1")
        elsif (jugada_1 == "Papel" && jugada_2 == "Tijera")
        	puts("Gana el jugador 2")
        elsif (jugada_1 == "Tijera" && jugada_2 == "Papel")
            puts("Gana el jugador 1")
        end
end
puts 'Turno jugador 1:'
imprimir_menu
jugada_1 = gets.chomp
if(jugada_1 == "Piedra" || jugada_1 == "Papel" || jugada_1 == "Tijera")    
    puts 'Turno jugador 2:'
	imprimir_menu
	jugada_2 = gets.chomp    
    if(jugada_2 == "Piedra" || jugada_2 == "Papel" || jugada_2 == "Tijera")
    	juego(jugada_1, jugada_2)    
	elsif jugada_2 == 'Salir'		
		puts "El programa ha finalizado"
    else    
        puts("Argumento inválido: Debe ser Piedra, Papel, Tijera o Salir")        
        jugada_2 = gets.chomp
        juego(jugada_1, jugada_2)
    end
elsif jugada_1 == 'Salir'
	puts "El programa ha finalizado"
else    
    puts("Argumento inválido: Debe ser Piedra, Papel, Tijera o Salir")    
    jugada_1 = gets.chomp
    juego(jugada_1, jugada_2)
    if(jugada_1 == "Piedra" || jugada_1 == "Papel" || jugada_1 == "Tijera")    
    puts 'Turno jugador 2:'
	imprimir_menu
	jugada_2 = gets.chomp    
	    if(jugada_2 == "Piedra" || jugada_2 == "Papel" || jugada_2 == "Tijera")
	    	juego(jugada_1, jugada_2)	    
		elsif jugada_2 == 'Salir'			
			puts "El programa ha finalizado"
	    else	    
	        puts("Argumento inválido: Debe ser Piedra, Papel, Tijera o Salir")	        
	        jugada_2 = gets.chomp
	        juego(jugada_1, jugada_2)
	    end
	elsif jugada_1 == 'Salir'
		puts "El programa ha finalizado"
	else 
		puts "Descalificado"
	end
end