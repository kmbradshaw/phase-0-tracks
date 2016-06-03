bookshelf = {
"top" => [
	"candle", 
	"ferbie", 
	"flowers"
	],
"first row" => [
	"partner's record collection", 
	"old school binders", 
	"pokemon cards"
	],
"second row" => [
	"pencil holder",
	"stapler",
	"textbooks"
	],

"third row" => [
	"Wheel of Time Series", 
	"Mistborn Triology",
	"All of Ursula K. Le Guin's Novels"
	],
}

p bookshelf["top"][2]
p bookshelf["second row"][-1]
# We should probably throw those old binders out
bookshelf["first row"].delete"old school binders"
p bookshelf
#Good news! I just made room for a decorative vase
bookshelf["first row"].push "vase"
p bookshelf
#Couldn't bring myself to actually throw them away
bookshelf["floor"] = ["old school binders"]
p bookshelf["floor"].last