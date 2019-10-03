def full_pyramid (chiffre)
	n = 1
		for i in 1..chiffre
			print " " * (chiffre - i)
			puts "#" * n
			n +=2
		end
end

def wtf_pyramid(chiffre)
	full_pyramid((chiffre + 1)/2)
	n = 2
	for i in 1..((chiffre - 1)/2)
		print " " * i
		puts "#" * (chiffre - n)
		n += 2
	end
end

puts "Combien d'étages a la pyramide ?"
print "> "
chiffre = gets.chomp.to_i
while chiffre %2 == 0
	puts "Choisis un chiffre impair"
	chiffre = gets.chomp.to_i
end

wtf_pyramid(chiffre)