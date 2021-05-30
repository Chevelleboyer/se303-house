class House

	DATA = [" the horse and the hound and the horn that belonged to", " the farmer sowing his corn that kept", " the rooster that crowed in the morn that woke", " the priest all shaven and shorn that married", " the man all tattered and torn that kissed", " the maiden all forlorn that milked", " the cow with the crumpled horn that tossed", " the dog that worried", " the cat that killed", " the rat that ate", " the malt that lay in", " the house that Jack built."]
	VERBS = [" belonged to"]

	def line(number)
		"This is#{phrase(number)}\n"
	end

	def phrase(number=nil)
		self.class::DATA[-number..-1].join("")
	end

	def recite
		(1..12).each.collect { |n| line(n) }.join("\n")
	end

end

class Pirate < House
	def line(number)
		"Thar be#{phrase(number)}\n"
	end
end

class RandomHouse < House
	DATA = DATA.shuffle
end

class RandomPirate < Pirate
	DATA = DATA.shuffle
end



