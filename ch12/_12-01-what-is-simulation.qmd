
## What is Simulation?

Simulation is a way to use high-speed computer power to substitute for analytical
calculation. The law of large numbers tells us that if we observe a large sample of
i.i.d. random variables with finite mean, then the average of these random variables
should be close to their mean. If we can get a computer to produce such a large
i.i.d. sample, then we can average the random variables instead of trying (and
possibly failing) to calculate their mean analytically. For a specific problem, one
needs to figure out what types of random variables one needs, how to make a
computer produce them, and how many one needs in order to have any confidence
in the numerical result. Each of these issues will be addressed to some extent in this
chapter.
Proof of Concept
We begin with some simple examples of simulation to answer questions that we can
already answer analytically just to show that simulation does what it advertises. Also,
these simple examples will raise some of the issues to which one must attend when
trying to answer more difficult questions using simulation.
Example
12.1.1
The Mean of a Distribution. The mean of the uniform distribution on the interval
[0, 1] is known to be 1/2. If we had available a large number of i.i.d. uniform random
variables on the interval [0, 1], say, X1, . . . , Xn, the law of large numbers says that
X = 1
n
 n
i=1 Xi should be close to the mean 1/2. Table 12.1 gives the averages of
several different simulated samples of size n from the uniform distribution on [0, 1]
for several different values of n. It is not difficult to see that the averages are close
to 0.5 in most cases, but there is quite a bit of variation, especially for n = 100. There
seems to be less variation for n = 1000, and even less for the two largest values of n.
 
Example
12.1.2
A Normal Probability. The probability that a standard normal random variable is at
least 1.0 is known to be 0.1587. If we had available a large number of i.i.d. standard
normal random variables, say, X1, . . . , Xn, we could create Bernoulli random
variables Y1, . . . , Yn defined by Yi
= 1 if Xi
≥ 1.0 and Yi
= 0 if not. Then the law of
large numbers says that Y = 1
n
 n
i=1 Yi should be close to the mean of Yi , namely,
787
788 Chapter 12 Simulation
Table 12.1 Results of several different simulations in Example 12.1.1
n Replications of the simulation
100 0.485 0.481 0.484 0.569 0.441
1000 0.497 0.506 0.480 0.498 0.499
10,000 0.502 0.501 0.499 0.498 0.498
100,000 0.502 0.499 0.500 0.498 0.499
Table 12.2 Results of several different simulations in Example 12.1.2
n Replications of the simulation
100 0.16 0.18 0.17 0.22 0.14
1000 0.135 0.171 0.174 0.159 0.171
10,000 0.160 0.163 0.158 0.152 0.156
100,000 0.158 0.158 0.158 0.159 0.161
Pr(Xi
≥ 1.0) = 0.1587. Notice that Y is merely the proportion of the simulated Xi
values that are at least 1.0. Table 12.2 gives the proportions of Xi
≥ 1.0 for several
different simulated samples of size n from the standard normal distribution for several
different values of n. It is not difficult to see that the proportions are somewhat
close to 0.1587, but there is still quite a bit of variability from one simulation to the
next.  
As we mentioned earlier, there is no need for simulation in the above examples.
These were just to illustrate that simulation can do what it claims. However, one
needs to be aware that, no matter how large a sample is simulated, the average of
an i.i.d. sample of random variables is not necessarily going to be equal to its mean.
One needs to be able to take the variability into account. The variability is apparent
in Tables 12.1 and 12.2. We shall address the issue of the variability of simulations
later in the chapter.
The reader might also be wondering how we obtained all of the uniform and
normal random variables used in the examples.Virtually every commercial statistical
software package has a simulator for i.i.d. uniform random variables on the interval
[0, 1]. Later in the chapter, we shall discuss ways to make use of these for simulating
other distributions. One such method was already discussed in Chapter 3 on page 170.
Examples in which Simulation Might Help
Next, we present some examples where the basic questions are relatively simple to
describe, but analytic solution would be tedious at best.
Example
12.1.3
Waiting for a Break. Two servers, A and B, in a fast-food restaurant start serving
customers at the same time. They agree to meet for a break after each of them has
12.1 What Is Simulation? 789
Figure 12.1 Histogram of
sample of 10,000 simulated
waiting times Z in Example
12.1.3.
0
500
1000
1500
2000
2500
10 20 30
Waiting time Z
40 50 60
Count
served 10 customers. Presumably, one of them will finish before the other and have
to wait. How long, on average, will one of the servers have to wait for the other?
Suppose that we model all service times, regardless of the server, as i.i.d. random
variables having the exponential distribution with parameter 0.3 customers per
minute. Then the time it takes one server to server 10 customers has the gamma
distribution with parameters 10 and 0.3. Let X be the time it takes A to serve 10
customers, and let Y be the time it takes B to serve 10 customers. We are asked to
compute the mean of |X − Y |. The most straightforward way of finding this mean
analytically would require a two-dimensional integral over the union of two nonrectangular
regions.
On the other hand, suppose that a computer can provide us with as many
independent gamma random variables as we desire.We can then obtain a pair (X, Y )
and compute Z = |X − Y |.We then repeat this process independently as many times
as we want and average all the observed Z values. The average should be close to the
mean of Z.
Without going into details,we actually simulated 10,000 pairs of (X, Y ) values and
averaged the resulting Z values to get 11.71 minutes. A histogram of the simulated
Z values is in Fig. 12.1. As a confidence builder, we simulated another 10,000 pairs
and got an average of 11.77.  
Example
12.1.4
Long Run of Heads. You overheard someone say that they just got 12 consecutive
heads while flipping a seemingly fair coin. The probability of getting 12 heads in a
row in 12 independent flips of a fair coin is (0.5)12, a very small number. If the person
had obtained 12 tails in a row, you probably would have heard about that instead.
Even so, the probability of 12 of the same side is only (0.5)11. But then you learn that
the person actually flipped the coin 100 times, and the 12 heads in a row appeared
somewhere during those 100 flips. Presumably, you are less surprised to learn that
the person got a run of 12 of the same side somewhere in a sequence of 100 flips. But
how much larger is the probability of a run of 12 when one flips 100 times?
Suppose that we can make a computer flip a fair coin as many times as we wish.
We could ask it to flip 100 times and then check whether there was a run of length 12
or more. Let X = 1 if there is a run of 12 or more, and let X = 0 if not.We then repeat
this process independently as many times as we want and average all the observed
X values. The average should be close to the mean of X, which is the probability of
obtaining a run of 12 or more in 100 flips.
Without going into details, Fig. 12.2 shows a histogram of the longest runs in
10,000 repetitions of the experiment described above. For each of the 10,000 runs,
we calculated X as above and found the average to be 0.0214, still a small number,
790 Chapter 12 Simulation
Figure 12.2 Histogram of
sample of 10,000 longest runs
(head or tail). Each run was
observed in 100 flips of a fair
coin.
Longest run
5 10
500
1000
1500
2000
2500
15 20
Count
but not nearly so small as (0.5)11. We also repeated the calculation of the average
with another 10,000 sets of 100 flips and got 0.0229.  
Anumber of details were left out of exactly how the simulations were performed
in the above examples. However, it is clear what random variables we wanted to
observe, namely, Z in Example 12.1.3 andX in Example 12.1.4. Many simulations can
address more than one question. For instance, in Example 12.1.4, we recorded the
10,000 lengths of the longest runs even though our primary interest was in whether or
not the longest run was 12 or more.We could also have tried to calculate the expected
length of the longest run or other properties of the distribution of the longest run. In
Example 12.1.3, we could have tried to approximate the probability that one person
has to wait at least 15 minutes, etc.
Figures 12.1 and 12.2 illustrate that there is variation among the 10,000 repetitions
of a simulated experiment. Furthermore, each of the examples showed that a
complete rerunning of all 10,000 simulated experiments can be expected to produce a
different answer to each of our questions. How much different the answers should be
is a matter that we shall address in Sec. 12.2, where we use the Chebyshev inequality
and the central limit theorem to help us decide how many times to repeat the basic
experiment. Exactly how one simulates 100 flips of a coin or a pair of gamma random
variables will be taken up in Sec. 12.3.
Summary
Suppose that we want to know the mean of some function g of a random variable
or random vector W. For instance, in Example 12.1.3 we can let W = (X, Y ) and
g(W) = |X − Y |. If a computer can supply a large number of i.i.d. random variables
(or random vectors) with the distribution of W, one can use the average of the
simulated values of g(W) to approximate the mean of g(X). One must be careful
to take the variability in g(W) into account when deciding how much confidence to
place in the approximation.
Exercises
For each of the exercises in this section, you could also perform the simulations
described with various numbers of replications if you have appropriate computer
software available. Most of the distributions involved are commonly available in
computer software. If a distribution is not available, the simulations can wait until
methods for simulating specific distributions are introduced in Sec. 12.3.

1. Assume that one can simulate as many i.i.d. exponential
random variables with parameter 1 as one wishes. Explain
how one could use simulation to approximate the
mean of the exponential distribution with parameter 1.
2. If X has the p.d.f. 1/x2 for x >1, the mean of X is infinite.
What would you expect to happen if you simulated
a large number of random variables with this p.d.f. and
computed their average?
3. If X has the Cauchy distribution, the mean of X does
not exist. What would you expect to happen if you simulated
a large number of Cauchy random variables and
computed their average?
4. Suppose that one can simulate as many i.i.d. Bernoulli
random variarbles with parameter p as one wishes. Explain
how to use these to approximate the mean of the
geometric distribution with parameter p.
5. Two serversAandBin a fast-food restaurant each start
their first customers at the same time. After finishing her
second customer, A notices that B has not yet finished
his first customer. A then chides B for being slow, and
B responds that A just got a couple of easier customers.
Suppose that we model all service times, regardless of the
server, as i.i.d. random variables having the exponential
distribution with parameter 0.4. Let X be the sum of the
first two service times for server A, and let Y be the first
service time for server B. Assume that you can simulate as
many i.i.d. exponential random variables with parameter
0.4 as you wish.
a. Explain how to use such random variables to approximate
Pr(X < Y ).
b. Explain why Pr(X < Y ) is the same no matter what
the common parameter is of the exponential distribuions.
That is,we don’t need to simulate exponentials
with parameter 0.4.We could use any parameter
that is convenient, and we should get the same answer.
c. Find the joint p.d.f. of X and Y , and write the
two-dimensional integral whose value would be
Pr(X < Y ).
