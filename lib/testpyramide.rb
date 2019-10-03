def pyramid(height)
	height.times {|n|
		if n < (height / 2 + 2)
			print " " * (height - n - 1)
			puts "#" * (2 * n + 1)
		else
			(height / 2 - 1).times{|l|
				print " " * (l + 1)
				puts "#" 
			}
		end
	}
end

pyramid(7)