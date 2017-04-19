class CountWord < ApplicationRecord
	def count_word
		count = Hash.new 0
		text_to_count.each_line do | line |
			line.chop.split(/\W/).each do | word |
			word.gsub(/\t\r\n\f/,"")
			count[ word ] += 1 if word.length>0
		end
		end
		count.sort_by{ | key,value | -value }.each do | key, value |
			printf "[ %10s ] : %s\n", key, value
		end
	end
end
