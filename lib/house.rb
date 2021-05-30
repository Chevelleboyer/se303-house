class House

	DATA = [" the horse and the hound and the horn that", " the farmer sowing his corn that", " the rooster that crowed in the morn that", " the priest all shaven and shorn that", " the man all tattered and torn that", " the maiden all forlorn that", " the cow with the crumpled horn that", " the dog that", " the cat that", " the rat that", " the malt that"]
	VERBS = [" belonged to", " kept", " woke", " married", " kissed", " milked", " tossed", " worried", " killed", " ate", " lay in"]

	def line(number)
		"This is#{phrase(number)} the house that Jack built.\n"
	end

	def phrase(number=nil)
		(number-1).downto(1).collect { |i| self.class::DATA[-i]+self.class::VERBS[-i] }.join("")
	end

	def recite
		(1..12).each.collect { |n| line(n) }.join("\n")
	end
end

class Pirate < House
	def line(number)
		"Thar be#{phrase(number)} the house that Jack built.\n"
	end
end

class RandomHouse < House
	DATA = DATA.shuffle
end

class RandomPirate < Pirate
	DATA = DATA.shuffle
end



