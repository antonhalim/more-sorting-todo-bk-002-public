require 'pry'
class Array

	def sort_by_length
		self.sort_by{|x| [x.length, x]}
	end

	def sort_by_remainder(num)
		self.sort_by{|x|[x % num, x]}
	end
end
