def ask_first_name
	puts "Comment tu t'appelles ?"
	print "> "
	prenom = gets.chomp
	return prenom
end



def say_hello(first_name)
	puts "Hello #{first_name}"
end

def perform
	first_name = ask_first_name
	say_hello(first_name)
end

perform