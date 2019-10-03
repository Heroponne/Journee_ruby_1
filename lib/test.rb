def register_pw
	puts "Choisis un mot de passe :"
	print "> "
	mdp = gets.chomp
end

def login(chosen_pw)
	puts "Saisis ton mot de passe :"
	print "> "
	mdp = gets.chomp
	while mdp != chosen_pw
		puts "Mauvais mot de passe, rééssaie :"
		mdp = gets.chomp
	end
end

def bienvenue
	puts "Bienvenue dans la cache secrète, sans grands secrets pour le moment... ;)"
end

def perform
	chosen_pw = register_pw
	login(chosen_pw)
	bienvenue
end


perform