class GwCalculation < ApplicationRecord
	def gw_hours
		mon*2.to_i + tue.to_i + wed.to_i + thr.to_i + fri.to_i
	end
end
