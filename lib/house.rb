class House

	DATA = ["", "the house that Jack built."]

	def line(number)
		"This is#{phrase(number)} the house that Jack built.\n"
	end

	def phrase(number=nil)
		case number
		when 2
			" the malt that lay in"
		when 3
			" the rat that ate the malt that lay in"
		when 4
			" the cat that killed the rat that ate the malt that lay in"
		when 5
			" the dog that worried the cat that killed the rat that ate the malt that lay in"
		when 6
			" the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in"
		when 7
			" the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in"
		when 8
			" the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in"
		when 9
			" the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in"
		when 10
			" the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in"
		when 11
			" the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in"
		when 12
			" the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in"
		else
			""
		end
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



