(sec-1-7)=
# Counting Methods

*In simple sample spaces, one way to calculate the probability of an event involves counting the number of outcomes in the event and the number of outcomes in the sample space. This section presents some common methods for counting the number of outcomes in a set. These methods rely on special structure that exists in many common experiments, namely, that each outcome consists of several parts and that it is relatively easy to count how many possibilities there are for each of the parts.*

We have seen that in a simple sample space $S$, the probability of an event $A$ is the ratio of the number of outcomes in $A$ to the total number of outcomes in $S$. In many experiments, the number of outcomes in $S$ is so large that a complete listing of these outcomes is too expensive, too slow, or too likely to be incorrect to be useful. In such an experiment, it is convenient to have a method of determining the total number of outcomes in the space $S$ and in various events in $S$ without compiling a list of all these outcomes. In this section, some of these methods will be presented.

![Three cities with routes between them in @exm-1-7-1.](ch01/images/fig-1-10.svg){#fig-1-10 width="50%"}


### Multiplication Rule

::: {#exm-1-7-1}

# Example 1.7.1: Routes between Cities

Suppose that there are three different routes from city $A$ to city $B$ and five different routes from city $B$ to city $C$. The cities and routes are depicted in @fig-1-10, with the routes numbered from 1 to 8. We wish to count the number of different routes from $A$ to $C$ that pass through $B$. For example, one such route from @fig-1-10 is 1 followed by 4, which we can denote $(1, 4)$. Similarly, there are the routes $(1, 5), (1, 6), \ldots, (3, 8)$. It is not difficult to see that the number of different routes is $3 \cdot 5 = 15$.  

:::

@exm-1-7-1 is a special case of a common form of experiment.

::: {#exm-1-7-2}

# Example 1.7.2: Experiment in Two Parts

Consider an experiment that has the following two characteristics:

i. The experiment is performed in two parts.
ii. The first part of the experiment has $m$ possible outcomes $x_1, \ldots, x_m$ and, regardless of which one of these outcomes $x_i$ occurs, the second part of the experiment has $n$ possible outcomes $y_1, \ldots, y_n$.

Each outcome in the sample space $S$ of such an experiment will therefore be a pair having the form $(x_i, y_j)$, and $S$ will be composed of the following pairs:

$$
\begin{matrix}
(x_1, y_1) & (x_1, y_2) & \cdots & (x_1, y_n) \\
(x_2, y_1) & (x_2, y_2) & \cdots & (x_2, y_n) \\
\vdots & \vdots & \ddots & \vdots \\
(x_m, y_1) & (x_m, y_2) & \cdots & (x_m, y_n) \\
\end{matrix} 
$$

:::

Since each of the $m$ rows in the array in @exm-1-7-2 contains $n$ pairs, the following result follows directly.

![Tree diagram in which end-nodes represent outcomes.](/ch01/images/fig-1-11.svg){#fig-1-11 width="50%"}

::: {#thm-1-7-1}

# Theorem 1.7.1: Multiplication Rule for Two-Part Experiments

In an experiment of the type described in @exm-1-7-2, the sample space $S$ contains exactly $mn$ outcomes.

:::

@fig-1-11 illustrates the multiplication rule for the case of $n = 3$ and $m = 2$ with a tree diagram. Each end-node of the tree represents an outcome, which is the pair consisting of the two parts whose names appear along the branch leading to the end-node.

::: {#exm-1-7-3}

# Example 1.7.3: Rolling Two Dice

Suppose that two dice are rolled. Since there are six possible outcomes for each die, the number of possible outcomes for the experiment is $6 \cdot 6 = 36$, as we saw in @exm-1-6-5.

:::

The multiplication rule can be extended to experiments with more than two parts.

::: {#thm-1-7-2}

# Theorem 1.7.2: Multiplication Rule

Suppose that an experiment has $k$ parts ($k \geq 2$), that the $i$th part of the experiment can have $n_i$ possible outcomes ($i = 1, \ldots, k$), and that all of the outcomes in each part can occur regardless of which specific outcomes have occurred in the other parts. Then the sample space $S$ of the experiment will contain all vectors of the form $(u_1, \ldots, u_k)$, where $u_i$ is one of the $n_i$ possible outcomes of part $i$ ($i = 1, \ldots, k$). The total number of these vectors in $S$ will be equal to the product $n_1n_2\cdots n_k$.

:::

::: {#exm-1-7-4}

# Example 1.7.4: Tossing Several Coins

Suppose that we toss six coins. Each outcome in $S$ will consist of a sequence of six heads and tails, such as `HTTHHH`. Since there are two possible outcomes for each of the six coins, the total number of outcomes in $S$ will be $2^6 = 64$. If head and tail are considered equally likely for each coin, then $S$ will be a simple sample space. Since there is only one outcome in $S$ with six heads and no tails, the probability of obtaining heads on all six coins is $1/64$. Since there are six outcomes in $S$ with one head and five tails, the probability of obtaining exactly one head is $6/64 = 3/32$.

:::

::: {#exm-1-7-5}

# Example 1.7.5: Combination Lock

A standard combination lock has a dial with tick marks for 40 numbers from 0 to 39. The combination consists of a sequence of three numbers that must be dialed in the correct order to open the lock. Each of the 40 numbers may appear in each of the three positions of the combination regardless of what the other two positions contain. It follows that there are $40^3 = 64,000$ possible combinations. This number is supposed to be large enough to discourage would-be thieves from trying every combination.  

:::

**Note: The Multiplication Rule Is Slightly More General**. In the statements of Theorems [-@thm-1-7-1] and [-@thm-1-7-2], it is assumed that each possible outcome in each part of the experiment can occur regardless of what occurs in the other parts of the experiment. Technically, all that is necessary is that the **number** of possible outcomes for each part of the experiment not depend on what occurs on the other parts. The discussion of permutations below is an example of this situation.

### Permutations

::: {#exm-1-7-6}

# Example 1.7.6: Sampling without Replacement

Consider an experiment in which a card is selected and removed from a deck of $N$ different cards, a second card is then selected and removed from the remaining $N − 1$ cards, and finally a third card is selected from the remaining $N − 2$ cards. Each outcome consists of the three cards in the order selected. A process of this kind is called *sampling without replacement*, since a card that is drawn is not replaced in the deck before the next card is selected. In this experiment, any one of the $N$ cards could be selected first. Once this card has been removed, any one of the other $N − 1$ cards could be selected second. Therefore, there are $N(N − 1)$ possible outcomes for the first two selections. Finally, for every given outcome of
the first two selections, there are $N − 2$ other cards that could possibly be selected third. Therefore, the total number of possible outcomes for all three selections is $N(N − 1)(N − 2)$.

:::

The situation in @exm-1-7-6 can be generalized to any number of selections without replacement.

::: {#def-1-7-1}

# Definition 1.7.1: Permutations

Suppose that a set has $N$ elements. Suppose that an experiment consists of selecting $K$ of the elements one at a time without replacement. Let each outcome consist of the $K$ elements in the order selected. Each such outcome is called a permutation of $N$ elements taken $K$ at a time. We denote the number of distinct such permutations by the symbol $P_{n, k}$.

:::

By arguing as in @exm-1-7-6, we can figure out how many different permutations there are of $N$ elements taken $k$ at a time. The proof of the following theorem is simply to extend the reasoning in @exm-1-7-6 to selecting $k$ cards without replacement. The proof is left to the reader.

::: {#thm-1-7-3}

# Theorem 1.7.3: Number of Permutations

The number of permutations of $N$ elements taken $k$ at a time is $P_{N, k} = N(N − 1)\cdots (N − k + 1)$.

:::

::: {#exm-1-7-7}

# Example 1.7.7: Current Population Survey.

@thm-1-7-3 allows us to count the number of points in the sample space of @exm-1-6-1. Each outcome in $S$ consists of a permutation of $N = 50,000$ elements taken $k = 3$ at a time. Hence, the sample space $S$ in that example consists of

$$
50,000 × 49,999 × 49,998 = 1.25 \times 10^{14}
$$

outcomes.  

:::

When $k = N$, the number of possible permutations will be the number $P_{N,N}$ of different permutations of all $N$ cards. It is seen from the equation just derived that

$$
P_{N,N} = N(N − 1)\cdots 1 = N!
$$

The symbol $N!$ is read $N$ **factorial**. In general, the number of permutations of $N$ different
items is $N!$.

The expression for $P_{N, k}$ can be rewritten in the following alternate form for $k = 1, \ldots, N - 1$:

$$
P_{N, k} = N(N − 1) \cdots (N − k + 1)\frac{(N − k)(N − k − 1) \cdots 1}{(N − k)(N − k − 1) \cdots 1} = \frac{N!}{(N − k)!}
$$

Here and elsewhere in the theory of probability, it is convenient to define $0!$ by the relation

$$
0!= 1.
$$

With this definition, it follows that the relation $P_{N, k} = N!/(N-k)!$ will be correct for the value $k = N$ as well as for the values $k = 1, \ldots, N - 1$. To summarize:

::: {#thm-1-7-4}

# Theorem 1.7.4: Permutations

The number of distinct orderings of $k$ items selected without replacement from a collection of $N$ different items ($0 \leq k \leq N$) is

$$
P_{N,k} = \frac{N!}{(N-k)!}.
$$

:::

::: {#exm-1-7-8}

# Example 1.7.8: Choosing Officers

Suppose that a club consists of 25 members and that a president and a secretary are to be chosen from the membership. We shall determine the total possible number of ways in which these two positions can be filled.

Since the positions can be filled by first choosing one of the 25 members to be president and then choosing one of the remaining 24 members to be secretary, the possible number of choices is $P_{25, 2} = (25)(24) = 600$.  

:::

::: {#exm-1-7-9}

# Example 1.7.9: Arranging Books

Suppose that six different books are to be arranged on a shelf. The number of possible permutations of the books is $6! = 720$.

:::

::: {#exm-1-7-10}

# Example 1.7.10: Sampling with Replacement

Consider a box that contains $N$ balls numbered $1, \ldots, n$. First, one ball is selected at random from the box and its number is noted. This ball is then put back in the box and another ball is selected (it is possible that the same ball will be selected again). As many balls as desired can be selected in this way. This process is called *sampling with replacement*. It is assumed that each of the $N$ balls is equally likely to be selected at each stage and that all selections are made independently of each other.

Suppose that a total of $k$ selections are to be made, where $k$ is a given positive integer. Then the sample space $S$ of this experiment will contain all vectors of the form $(x_1, \ldots, x_k)$, where $x_i$ is the outcome of the $i$th selection ($i = 1, \ldots, k$). Since there are $N$ possible outcomes for each of the $k$ selections, the total number of vectors in $S$ is $N^k$. Furthermore, from our assumptions it follows that $S$ is a simple sample space. Hence, the probability assigned to each vector in $S$ is $1/n^k$.  

:::

::: {#exm-1-7-11}

# Example 1.7.11: Obtaining Different Numbers

For the experiment in @exm-1-7-10, we shall determine the probability of the event $E$ that each of the $k$ balls that are selected will have a different number.

If $k > N$, it is impossible for all the selected balls to have different numbers because there are only $N$ different numbers. Suppose, therefore, that $k \leq N$. The number of outcomes in the event $E$ is the number of vectors for which all $k$ components are different. This equals $P_{N, k}$, since the first component $x_1$ of each vector can have $N$ possible values, the second component $x_2$ can then have any one of the other $N - 1$ values, and so on. Since $S$ is a simple sample space containing $N^k$ vectors, the probability $p$ that $k$ different numbers will be selected is

$$
p = \frac{P_{N,k}}{N^k} = \frac{N!}{(N-k)!N^k}.
$$

:::

**Note: Using Two Different Methods in the Same Problem**. @exm-1-7-11 illustrates a combination of techniques that might seem confusing at first. The method used to count the number of outcomes in the sample space was based on sampling with replacement, since the experiment allows repeat numbers in each outcome. The method used to count the number of outcomes in the event $E$ was permutations (sampling without replacement) because $E$ consists of those outcomes without repeats. It often happens that one needs to use different methods to count the numbers of outcomes in different subsets of the sample space. The birthday problem, which follows, is another example in which we need more than one counting method in the same problem.

### The Birthday Problem {#sec-bday-problem}

In the following problem, which is often called the birthday problem, it is required to determine the probability $p$ that at least two people in a group of $k$ people will have the same birthday, that is, will have been born on the same day of the same month but not necessarily in the same year. For the solution presented here, we assume that the birthdays of the $k$ people are unrelated (in particular, we assume that twins are not present) and that each of the 365 days of the year is equally likely to be the birthday of any person in the group. In particular, we ignore the fact that the birth rate actually varies during the year and we assume that anyone actually born on February 29 will consider his birthday to be another day, such as March 1.

When these assumptions are made, this problem becomes similar to the one in @exm-1-7-11. Since there are 365 possible birthdays for each of $k$ people, the sample space $S$ will contain $365^k$ outcomes, all of which will be equally probable. If $k > 365$, there are not enough birthdays for every one to be different, and hence at least two people must have the same birthday. So, we assume that $k \leq 365$. Counting the number of outcomes in which at least two birthdays are the same is tedious. However, the number of outcomes in $S$ for which all $k$ birthdays will be different is $P_{365, k}$, since the first person's birthday could be any one of the 365 days, the second person's birthday could then be any of the other 364 days, and so on. Hence, the probability that all $k$ persons will have different birthdays is

$$
\frac{P_{365,k}}{365^k}.
$$

The probability $p$ that at least two of the people will have the same birthday is therefore

$$
p = 1 - \frac{P_{365,k}}{365^k} = 1 - \frac{(365)!}{(365-k)!365^k}.
$$

Numerical values of this probability $p$ for various values of k are given in @tbl-1-1. These probabilities may seem surprisingly large to anyone who has not thought about them before. Many persons would guess that in order to obtain a value of $p$ greater than $1/2$, the number of people in the group would have to be about 100. However, according to @tbl-1-1, there would have to be only 23 people in the group. As a matter of fact, for $k = 100$ the value of $p$ is $0.9999997$.

| $k$ | $p$ | $k$ | $p$ |
| - | - | - | - |
| 5 | 0.027 | 25 | 0.569 |
| 10 | 0.117 | 30 | 0.706 |
| 15 | 0.253 | 40 | 0.891 |
| 20 | 0.411 | 50 | 0.970 |
| 22 | 0.476 | 60 | 0.994 |
| 23 | 0.507 |    |       |

: The probability $p$ that at least two people in a group of $k$ people will have the same birthday {#tbl-1-1}

The calculation in this example illustrates a common technique for solving probability problems. If one wishes to compute the probability of some event $A$, it might be more straightforward to calculate $\Pr(A^c)$ and then use the fact that $\Pr(A) = 1 − \Pr(A^c)$. This idea is particularly useful when the event $A$ is of the form "at least $N$ things happen" where $N$ is small compared to how many things could happen.

### Stirling's Formula

For large values of $n$, it is nearly impossible to compute $n!$. For $n \geq 70$, $n! > 10^{100}$ and cannot be represented on many scientific calculators. In most cases for which $n!$ is needed with a large value of $n$, one only needs the ratio of $n!$ to another large number $a_n$. A common example of this is $P_{n,k}$ with large $n$ and not so large $k$, which equals $n!/(n − k)!$. In such cases, we can notice that

$$
\frac{n!}{a_n} = e^{\log(n!) - \log(a_n)}.
$$

Compared to computing $n!$, it takes a much larger $n$ before $\log(n!)$ becomes difficult to represent. Furthermore, if we had a simple approximation $s_n$ to $\log(n!)$ such that $\lim_{n \rightarrow \infty}|s_n - \log(n!)| = 0$, then the ratio of $n!/a_n$ to $s_n/a_n$ would be close to 1 for large $n$. The following result, whose proof can be found in @feller_introduction_1968, provides such an approximation.

::: {#thm-1-7-5}

# Theorem 1.7.5: Stirling's Formula

Let

$$
s_n = \frac{1}{2}\log(2\pi) + \left(n + \frac{1}{2}\right)\log(n) - n.
$$

Then $\lim_{n \rightarrow \infty}|s_n - \log(n!)| = 0$. Put another way,

$$
\lim_{n \rightarrow \infty} \frac{(2\pi)^{1/2}n^{n + 1/2}e^{-n}}{n!} = 1.
$$

:::

::: {#exm-1-7-12}

# Example 1.7.12: Approximating the Number of Permutations

Suppose thatwewant to compute $P_{70,20} = 70!/50!$. The approximation from Stirling's formula is

$$
\frac{70!}{50!} \approx \frac{(2\pi)^{1/2}70^{70.5}e^{-70}}{(2\pi)^{1/2}50^{50.5}e^{-50}} = 3.940 \times 10^{35}.
$$

The exact calculation yields $3.938 \times 10^35$. The approximation and the exact calculation differ by less than $1/10$ of 1 percent.  

:::

### Summary

Suppose that the following conditions are met:

* Each element of a set consists of $k$ distinguishable parts $x_1, \ldots, x_k$.
* There are $n_1$ possibilities for the first part $x_1$.
* For each $i = 2, \ldots, k$ and each combination $(x_1, \ldots x_{i-1})$ of the first $i − 1$ parts, there are $n_i$ possibilities for the $i$th part $x_i$.

Under these conditions, there are $n_1 \cdots n_k$ elements of the set. The third condition requires only that the number of possibilities for $x_i$ be $n_i$ no matter what the earlier parts are. For example, for $i = 2$, it does **not** require that the same $n_2$ possibilities be available for $x_2$ regardless of what $x_1$ is. It only requires that the **number** of possibilities for $x_2$ be $n_2$ no matter what $x_1$ is. In this way, the general rule includes the multiplication rule, the calculation of permutations, and sampling with replacement as special cases. For permutations of $m$ items $k$ at a time, we have $n_i = m − i + 1$ for $i = 1, \ldots, k$ and the $n_i$ possibilities for part $i$ are just the $n_i$ items that have not yet appeared in the first $i − 1$ parts. For sampling with replacement from $m$ items, we have $n_i = m$ for all $i$, and the $m$ possibilities are the same for every part. In the next section, we shall consider how to count elements of sets in which the parts of each element are not distinguishable.

### Exercises

::: {#exr-1-7-1}

# Exercise 1.7.1

Each year starts on one of the seven days (Sunday through Saturday). Each year is either a leap year (i.e., it includes February 29) or not. How many different calendars are possible for a year?

:::

::: {#exr-1-7-2}

# Exercise 1.7.2

Three different classes contain 20, 18, and 25 students, respectively, and no student is a member of more than one class. If a team is to be composed of one student from each of these three classes, in how many different ways can the members of the team be chosen?

:::

::: {#exr-1-7-3}

# Exercise 1.7.3

In how many different ways can the five letters `a`, `b`, `c`, `d`, and `e` be arranged?

:::

::: {#exr-1-7-4}

# Exercise 1.7.4

If a man has six different sportshirts and four different pairs of slacks, how many different combinations can he wear?

:::

::: {#exr-1-7-5}

# Exercise 1.7.5

If four dice are rolled, what is the probability that each of the four numbers that appear will be different?

:::

::: {#exr-1-7-6}

# Exercise 1.7.6

If six dice are rolled, what is the probability that each of the six different numbers will appear exactly once?

:::

::: {#exr-1-7-7}

# Exercise 1.7.7

If 12 balls are thrown at random into 20 boxes, what is the probability that no box will receive more than one ball?

:::

::: {#exr-1-7-8}

# Exercise 1.7.8

An elevator in a building starts with five passengers and stops at seven floors. If every passenger is equally likely to get off at each floor and all the passengers leave independently of each other, what is the probability that no two passengers will get off at the same floor?

:::

::: {#exr-1-7-9}

# Exercise 1.7.9

Suppose that three runners from team A and three runners from team B participate in a race. If all six runners have equal ability and there are no ties, what is the probability that the three runners from team A will finish first, second, and third, and the three runners from team B will finish fourth, fifth, and sixth?

:::

::: {#exr-1-7-10}

# Exercise 1.7.10

A box contains 100 balls, of which $r$ are red. Suppose that the balls are drawn from the box one at a time, at random, without replacement. Determine

(a) The probability that the first ball drawn will be red;
(b) The probability that the 50th ball drawn will be red; and
(c) The probability that the last ball drawn will be red.

:::

::: {#exr-1-7-11}

# Exercise 1.7.11

Let $N$ and $k$ be positive integers such that both $N$ and $N − k$ are large. Use Stirling's formula to write as simple an approximation as you can for $P_{N,k}$.

:::
