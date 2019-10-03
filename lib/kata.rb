def positive_sum(arr)
	arr.select{|obj| obj > 0
		puts arr.sum
		}
end

positive_sum([1,2,3,4,5,-5])