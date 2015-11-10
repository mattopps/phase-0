What does puts do?

A-puts returns nil and displays the output on a new line.

What is an integer? What is a float?

A - an integer is a round number with no decimal. eg 5 (5.0) is an integer. 

A float is a number with a non 0 decimal. 5.1, 5.2 .. 5.9 are all floats.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

A -The output for Division of numbers matches the input. There is a matching principle. You get out what you put in. If there are no decimal places in the numbers you divide you will not get decimal places in the answer/output. If you want decimals in the answer, use decimals in the inputs. If you use decimals in the numbers you are dividing you will get decimals in the answer. 

<!-- 

Q-How does Ruby handle addition, subtraction, multiplication, and division of numbers?

A- In order. PEMDAS style. if the expressions are integers then the answer /output will be an integer. same goes for floats.

What are strings? Why and when would you use them?

A- Strings are any displayed text. They can be letters numbers or symbols. they would be used anytime you want to display text or messages. If numbers are in a string they have no mathematical properties that can be acted on. "2 + 2" != 4. it is = to "2 + 2", the actual characters.

What are local variables? Why and when would you use them?

A- They are placeholders that point the computer/program to stored info. It is local because it can be used in a specific program or method within a program but will be unrecognized outside of that scope. defining a variable in one program will not prevent you from defining the same variable differently in another program.

they are great at simplifying a program and saving time when multiple or complex operations are performed.

How was this challenge? Did you get a good review of some of the basics?

It was very frustrating that in the steps for releases 0,1 for the challenges it doesn't specify or hint or remind that the actual ruby code must go on top of the rspec test code in the file. The way it's written it implies that you cut and paste the rspec and then add in the new code. Usually I would add new code below old code.

but all the tests fail with the code beneath the rspec and pass if I just cut and paste to the top of the file. so what took 30 seconds to otherwise do took  many minutes. The hint to check the return differences of p,puts, and print were a red herring and wasted more time. nothing needed to be returned. we simply had to create a variable.  -->