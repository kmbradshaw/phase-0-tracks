# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#replace will also work for all of the below 

p "iNvEsTiGaTiOn".swapcase == "InVeStIgAtIoN"

p "zom".insert(2, "o") == "zoom"

p "enhance".center(15) == "    enhance    "

p "Stop! You’re under arrest!".upcase == "STOP! YOU’RE UNDER ARREST!"

p "the usual".insert(9, " suspects") == "the usual suspects"

p " suspects".insert(0, "the usual") == "the usual suspects"

p "The case of the disappearing last letter".chop == "The case of the disappearing last lette"

p ("The mystery of the missing first letter".delete "T")  == "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze(" ") == "Elementary, my dear Watson!"

p "z".ord == 122 
#122 is the corresponding integer location as defined by the ASC for "z" - where "a" is 97. Capital letters and symbols also have corresponding integer values.

p ("How many times does the letter 'a' appear in this string?".count "a") == 4



