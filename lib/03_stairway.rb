def roll_dice
	rand(6)+1
end

def analyze_dice(dice)
	dice = dice.to_i
	if dice >= 5
		puts "Vous avancez !"
		return 1
	elsif dice == 1
		puts "Vous reculez !"
		return -1
	else
		puts "Rien ne se passe..."
		return 0
	end
end

def show_state(num)
	num = num.to_i
	puts "Vous êtes sur la marche n° #{num}"
end

def is_over?(num)
	num = num.to_i
	if num == 10
		return true
	else
		return false
	end
end


def play
	round_to_finish = 0
	step = 1
	puts "Bienvenue dans le jeu !!"
	show_state(step)
	while (!is_over?(step)) do 
		puts "Appuyez sur 'Entrée' pour jouer !"
		gets.chomp
		step = step + analyze_dice(roll_dice)
		show_state(step)
		round_to_finish = round_to_finish + 1
	end
	puts "== Victoire !!=="
	return round_to_finish
end

def average_finish_time
	average = Array.new
 	100.times do
 		average << play
 			end
 	print "la moyenne est :" 
 	puts average.sum/100
 end 

# Pour jouer : lancer la méthode play

# Pour avoir la moyenne : mettre des '#' devant tous les puts sauf celui de 
# la méthode average_finish_time, ainsi que devant le gets.chomp de la méthode play
# et lancer la méthode average_finish_time

