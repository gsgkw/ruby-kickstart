# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
to_return = ""
r_last = false

string.each_char do |x|

	to_return << x if r_last
	r_last = (x == "r")
	end

print to_return
end

pirates_say_arrrrrrrrr("how're your arrrmy yfriends")