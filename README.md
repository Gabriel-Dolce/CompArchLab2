# CompArchLab2
@author Gabriel Dolce
@version 1/29/22

overview of project:
Much of this lab was finishing the switch statements already established. Already given all of our inputs being Input, clock cycle, reset as well as our output of F, much of this lab was about understanding the code given to us to be able to correcly make changes. A 3 bit binary value for the states was used due to there being 5 unique states. Each state was defined using a unique binary combination. Next, a 3 bit register was created for the current state as well as next state. This is to properly hold state data. 

Line 14 establishes that the program checks for the reset input every time the clock input rises. If the reset is pressed, the current state is set to S0.

the next loop addresses what happens when the input and current state values are changed. Completing the switch statement according to the diagram, the unique behavior of the  switch statement was established. 

After the switch statement is done, the output is determined using a turnary operator. This is done by only setting the output to 1 if the current state is the final one in the diagram. I had to change line 68 to <= in order for it to properly work for me.


The testbench was made by initializing inputs, and then changing them after sending instruction to make the clock wait. By allowing the clock to wait, it allows for the state changes to be displayed on the chart. For the clock cycles, they were automatically set to switch back and fourth. However, the $stop command is necessary to prevent an infinite loop. While manually setting the clock is possible, doing it in a loop is much easier.
