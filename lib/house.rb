class House

	# DATA = [" the malt that lay in", " the rat that ate"]

	# def line(number)
	# 	"This is#{phrase(number)} the house that Jack built.\n"
	# end

	# def phrase(number=nil)
	# 	case number
	# 	when 2
	# 		DATA[-number].join("")

	DATA = [" the farmer sowing his corn that kept", " the rooster that crowed in the morn that woke", " the priest all shaven and shorn that married", " the man all tattered and torn that kissed", " the maiden all forlorn that milked", " the cow with the crumpled horn that tossed", " the dog that worried", " the cat that killed", " the rat that ate", " the malt that lay in", ""]

	def line(number)
		"This is#{phrase(number)} the house that Jack built.\n"
	end

	def phrase(number=nil)
		case number
		when 1
			""
		when 11
			" the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in"
		when 12
			" the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in"
		else
			DATA[-number..-1].join("")
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



