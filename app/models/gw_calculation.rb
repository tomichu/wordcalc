class GwCalculation < ApplicationRecord
	def gw_hours
		mon.to_i*2 + tue.to_i*2 + wed.to_i + thr.to_i + fri.to_i
	end
end
