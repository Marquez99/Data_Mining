**
***

# ***PRACTICE #1***

***
## Law of large numbers

**
Prove the law of large numbers for N normally distributed random numbers with mean = 0, stdev = 1:
Create an R script that will count how many of these numbers are between -1 and 1 and divide by the total number of N
You know that E (X) = 68.2%. Check that Mean (Xn) -> E (X) while rerunning your script while increasing N.

**DEVELOPING**
***1. Initialize the sample size:*** The sample size is initialized, where the possible results of numbers between -1 and 1 will be obtained, which must be a considerable size to be able to obtain at the end the percentage of the probability about 68.2%.

***2. Initialize counter:*** In order to count how many times the value is repeated within our sample of numbers, our counter is initialized by one, so that once the condition is met, the value of the counter increases to be able to stop the loop.

***3. Loop for (i in rnorm (size)):*** A loop is created so that the values ​​found in our sample can be displayed and the counter can be increased so that it counts the probability of this value falling.

***4. Verify if the iterated variable falls:*** A conditional is created, that verifies if a value between the numbers -1 and 1 is repeated, increase our counter, so that the value of the probability is accumulated.

***5. Increase the counter if the condition is true:*** Once the values ​​are between the two established numbers, the counter is increased and the probability of these numbers increases.

***6. Returns a result <- counter / N:*** To determine the number of times the value is repeated, or rather the probability that this value falls, the counter in which a value falls between -1 and 1 is divided by the quantity values ​​of our sample.
