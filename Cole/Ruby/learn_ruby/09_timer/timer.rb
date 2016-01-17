class Timer
	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end
	def seconds=(time)
		@seconds = time
	end
	def seconds 
		@seconds%60
	end
	def minutes
		@seconds/60%60
	end
	def hours
		@seconds/3600
	end
	def time_string
		sprintf("%02d",hours) + ":" + sprintf("%02d",minutes) + ":" + sprintf("%02d",seconds)
	end
end