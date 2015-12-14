

# # Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs. ## Split with no argument is the appears to be the same as split with a space in string space in the argument. It creates an array with each word in the sentence as an element of the array. split with an empty string creates an array of each character. calling split with a character that isn't in the sentence just wraps the entire string in an array.
#   decoded_sentence = []					   # split is nondestructive so it is set equal to a new variable. Split removes the specified sub string. so if you split the following sentence like so "HEllo world".split("l") it would return => ["He", "", "o wor", "d?"], if you split by double l "HEllo world".split("l") =>  ["He", "o world?"]
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",   #Pros, immutability. No risk of duplication and contamination of the keys. cons. hard-coded. harder to pick out a specific value than in an array.
#             "h" => "d",
#             "i" => "e",	  #Just thinking on screen here, but an array has numbers as indexed which would be much easier to iterate through if the purpose was to create a structure, or access by index number. 
#             "j" => "f",	  #If  it is definitely going to be a 4 letter shift then any letter in the new array would be reg_ab = [(a..z)]; cipher_letter = reg_ab[reg_ab.index - 4]
#             "k" => "g",	  #
#             "l" => "h",	  # abc = ('a'..'z').to_a 
#             "m" => "i",	  # cipher = abc.push(abc.shift(4).flatten)
#             "n" => "j",	  #    
#             "o" => "k",	  #   def decode(letter) 
#             "p" => "l",	  #     cipher[abc([letter.index)]
#             "q" => "m",	  #
#             "r" => "n",	  #
#             "s" => "o",	  #
#             "t" => "p",	  #
#             "u" => "q",	  #
#             "v" => "r",	  #
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? ## Iterating though every letter of the incoming message to be decoded, which was split into individual letters with .split
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? ##If it is false the original undeciphered character gets added to the decoded message as per lines 59-60. This ensures that either a deciphered changed character is added to the decoded sentence or the same character unchanged gets added.
#     cipher.each_key do |y| # What is #each_key doing here? ##Checking every key in the hash against the letter in the incoming message to see if there is a match. It is a more readable and more aptly structured iteration than the standard .each for a hash which needs two variables. |key ,value|
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         decoded_sentence << cipher[y] ## the value (decoded letter) for the key (letter from the coded incoming message) is added to the decoded message. 
#         found_match = true ## changes this so that line 60 doesn't also add the original character form the coded message.
#         break  # Why is it breaking here? ## I know what it does without the break. It iterates through the entire hash and adds an empty space for each letter each time it doesn't find a match. So there are 26 spaces between each character in the decoded message. I just am not sure why it does that. eg, it doesn't add 10 spaces if it finds the letter as the 11th key in the hash.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" ## Any of these characters in the incoming coded message puts a space into the decoded sentence.
#         decoded_sentence << " "
#         found_match = true ## same as above
#         break              ## same as above
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? ## Creates an array of the numbers 0 through 9, with 10 elements. Much like I did above to create the array abc of all the letters of the alphabet.
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? a false value assigned to found_match. It will be the opposite of an if statement. The code block will execute if the conditional is false. It is the same as writing unless. But some people don't like unless. What is happening is the three conditionals on 45,49,53 only test for a specific set of symbols. the 36 alphanumeric symbols and 7 symbols which stand in for a space. Any other character will be added as is, unchanged from the original message into the decoded message. so ",", "!", "?", "<" ... etc. will all be added to the decoded message without change.
#       decoded_sentence << x  ## The whole found match thing is unneccesary and therefor if not vs unless is moot. I noticed somehting odd about the control flow here immediately, but didn't really put my finger on it until the end of the refactoring process. Why was there no else statement here. So simple. So add an else and get rid of all the found match stuff. and the breaks.
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") ## decoded_sentence was an array. we want it to be a normal English sentence. this condenses all the elements of the array into a string with a delimiter. Usually a normal readable English sentence will need spaces added to it when join is used. but in this case we already added the spaces in to the array as elements. 
#   #What is this method returning? ## A string of the combo of all the decoded characters and characters which weren't deciphered and were added directly form the original message
# end

# Your Refactored Solution


def dr_evils_cipher(transmission)
  transmission = transmission.downcase.split("") 
  decoded_message = []					   
  symbol_array = ["@","#","$","%","^","&","*"]
  abc = ('a'..'z').to_a
  cipher = abc.unshift(abc.pop(4)).flatten! # You don't really need two arrays here. line 74 could just as easily be cipher = ('a'..'z').to_a. This is probably more readable. If I could have gotten 74 and 75 into one line maybe it would matter, but cipher would still be nil as far as pop was concerned if it was on one line.
  
  transmission.each do |coded_character|
      if cipher.include?(coded_character)
        decoded_message << cipher[cipher.find_index(coded_character)-4]
      elsif symbol_array.include?(coded_character)
        decoded_message << " "
      elsif (0..9).to_a.include?(coded_character)
        decoded_message << coded_character 
      else
        decoded_message << coded_character 
      end
   end
     decoded_message = decoded_message.join("") 
end
# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
#Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"

p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."

p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"


# Reflection
# Keep your reflection limited to 10-15 minutes!Reflection
# What concepts did you review or learn in this challenge?
##  - A lot. Arrays, assignment, array manipulation and iteration and control flow.
##  - I think I had my cipher backwards. I was using the keys from the original hash as a model for my array cipher. At first I was using irb to test out finding the index of the letter in abc and subtracting four to get the index that would yield the same letter in cipher. so it was an array where index 0 was "e" and "a" was 22. But the whole thing was based on the unnecessary hash based test of actually checking that the letters were equal. I eventually realized that I could throw it all out and just mimic the blocks from the numbers.( which I somehow did realize instantly was the way to go about checking those 7 other symbols) but it took me a while ot realize it was so simple for the letters also. But This shifted the letters in the wrong direction. Then I pushed instead of popped and got a lot of nils. didn't figure it out for an hour, after I simply hardcoded cipher.
# What is still confusing to you about Ruby?
##  -in general I don't see the easy, short,direct way  at first and I usually have to spend a while doing it the long way until I realize I could have done it in half the time with half the code.
##  - I probably need some more practice with local variables. Part of this challenge suggested possibly breaking up the program into two or three methods. I though it would be as simple as ending the first method on 76 and defining a new method for the rest, and all I would need is to call the first method as the first line of code in the second method. got an error. Didn't spend any more time on it . Needed to move on to finish the week at that point.
##  - I am definitely much less comfortable iterating through hashes or nested structures than I am with linear arrays. It took me a while to realize I didn't need a second #each do here. At first I just changed the each_key to each when I used an array instead of a hash. but I didn't need it at all. 
# What are you going to study to get more prepared for Phase 1?
##  -Ruby Monk. Well Grounded Rubyist. stackoverflow. the docs 



