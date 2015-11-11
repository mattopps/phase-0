# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys " + "I'm going home." 

# begin def cartman_hates(thing)
 # while true
  #  puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#     errors.rb
# 2. What is the line number where the error occurs?
#      ln 171
# 3. What is the type of error message?
#        syntax error
# 4. What additional information does the interpreter provide about this type of error?
#           end-of-input, expecting keyword_end
#
# 5. Where is the error in the code?
#          there isn't an end to close the method on line 16.
# 6. Why did the interpreter give you this error?
#       without an end for each the while loop and the method itself the interpreter thinks all code inthe file until the next end is part of the method
# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# =>     32
# 2. What is the type of error message?
#       Object (name error)
# 3. What additional information does the interpreter provide about this type of error?
#         undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
#             there needs to be an = and some other code after south_park
# 5. Why did the interpreter give you this error?
#             variables need to be defined.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#         47
# 2. What is the type of error message?
#         Object (NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
#             `<main>': undefined method `cartman' for main:
# 4. Where is the error in the code?
#                the ()s indicate a method. but all method specific code is absent(def, body, end)
# 5. Why did the interpreter give you this error?
#             the ()s indicate a method. but all method specific code is absent(def, body, end)


# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#          63 (67)
# 2. What is the type of error message?
#           (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
#           wrong number of arguments (1 for 0) 
# 4. Where is the error in the code?
#          after the method call on line 67
# 5. Why did the interpreter give you this error?
#            the method as definined does not take an argument. it should always puts the same phrase. But it is called with an argument of a different phrase.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#              82(86)
# 2. What is the type of error message?
#               (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
#              wrong number of arguments (0 for 1) 
# 4. Where is the error in the code?
#                line 86 after the name of the method.
# 5. Why did the interpreter give you this error?
#                     The exact opposite of the last example. The method as defined requires an argument when called but on line 86 it is called without an argument 
#--- error -------------------------------------------------------

=begin def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
#             100 (104)
# 2. What is the type of error message?
#             Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#            wrong number of arguments (1 for 2) 
# 4. Where is the error in the code?
#             line 104 after the first passed argument
# 5. Why did the interpreter give you this error?
#          the method as defnined calls for two arguments. on line 104 the method is called with 1 argument.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#         119
# 2. What is the type of error message?
#            Type error
# 3. What additional information does the interpreter provide about this type of error?
#           in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
#        <main> in the order of the operation.
# 5. Why did the interpreter give you this error?
#          If the intent was to try to write the string 5 times, the string must come first and be multiplied by a number. It is impossible to multiply a number "string" times.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#        134
# 2. What is the type of error message?
#              (ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
#                 divided by 0
# 4. Where is the error in the code?
#              after the / symbol
# 5. Why did the interpreter give you this error?
#              it is impossible to divide a number by 0

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#          150
# 2. What is the type of error message?
#            Load Error
# 3. What additional information does the interpreter provide about this type of error?
#           cannot load such file -- /Users/robertoppenheimer2/Butch/DBC/phase-0/phase-0/cartmans_essay.md 
# 4. Where is the error in the code?
#              <main> the name of the file attempting to be loaded
# 5. Why did the interpreter give you this error?
#              no such file is recognized/exists in the directory on the path as written.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?

-    The final one definitely had the most words in it. They were all relatively easy to read.
     None were difficult to read. a minor technical detail is if the error is indicated as being line 1, because that's where the mthod starts, but really the line of the error is at the end of the method. Why doesn't it indicate the final line instead of the first line?

How did you figure out what the issue with the error was?

-        It was pretty straightforward.

Were you able to determine why each error message happened based on the code? 

       -yes


When you encounter errors in your future code, what process will you follow to help you debug?

         - reading the error message. checking the line specified and the type of error. googling if necessary. 


=end

