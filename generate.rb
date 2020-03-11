class Generate 
	def generate(text)
		ords = [0] + text.chars.map(&:ord)
		ords.each_cons(2).map do |previous, current|
		delta = current - previous
		line = (delta < 0 ? "-" : "+") * delta.abs
		"#{line}."
		end.join("\n")
	end
end